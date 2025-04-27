import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:io';
import 'dart:convert';
import 'package:image_picker/image_picker.dart';
import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';

// 添加图片详情页
class ImagePreviewScreen extends StatelessWidget {
  final String imagePath;
  final bool isLocalImage;

  const ImagePreviewScreen({
    super.key,
    required this.imagePath,
    required this.isLocalImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Image Preview',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: InteractiveViewer(
          minScale: 0.5,
          maxScale: 3.0,
          child: isLocalImage
              ? Image.file(
                  File(imagePath),
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(Icons.broken_image, color: Colors.white, size: 64),
                    );
                  },
                )
              : Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(Icons.broken_image, color: Colors.white, size: 64),
                    );
                  },
                ),
        ),
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  final Map<String, dynamic> userData;

  const ChatScreen({
    super.key,
    required this.userData,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<ChatMessage> _messages = [];
  bool _isRecording = false;
  final ImagePicker _imagePicker = ImagePicker();
  
  // 录音相关
  final AudioRecorder _recorder = AudioRecorder();
  String? _currentRecordingPath;
  int _recordDuration = 0;
  DateTime? _recordingStartTime;
  
  // 音频播放相关
  final Map<String, AudioPlayer> _audioPlayers = {};
  final Map<String, bool> _isPlayingAudio = {};
  
  // 用户背景图
  String _userBackgroundImage = '';
  
  // 该用户的聊天ID
  String _chatId = '';
  
  @override
  void initState() {
    super.initState();
    _initializeAudioSession();
    _initUserBackground();
    _chatId = _getChatId();
    _loadChatHistory();
  }
  
  // 获取聊天的唯一ID
  String _getChatId() {
    // 检查传入的userData是否已包含chatId（从消息列表进入时）
    if (widget.userData.containsKey('chatId') && widget.userData['chatId'] != null) {
      debugPrint('Using existing chatId: ${widget.userData['chatId']}');
      return widget.userData['chatId'].toString();
    }
    
    // 否则生成新的chatId
    final userId = widget.userData['id']?.toString() ?? 
                widget.userData['nickname']?.toString() ?? 
                widget.userData['userphoto']?.toString() ?? 
                'unknown-user';
    final chatId = 'chat_with_$userId';
    
    debugPrint('Generated new chatId: $chatId');
    return chatId;
  }
  
  // 加载聊天历史记录
  Future<void> _loadChatHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final chatHistoryJson = prefs.getString(_chatId);
      
      if (chatHistoryJson != null && chatHistoryJson.isNotEmpty) {
        final List<dynamic> chatHistoryList = jsonDecode(chatHistoryJson);
        
        final loadedMessages = chatHistoryList.map((messageJson) {
          return ChatMessage.fromJson(messageJson);
        }).toList();
        
        setState(() {
          _messages.clear();
          _messages.addAll(loadedMessages);
        });
        
        // 滚动到底部显示最新消息
        _scrollToBottom();
      }
      
      debugPrint('Loaded ${_messages.length} messages for chat $_chatId');
    } catch (e) {
      debugPrint('Error loading chat history: $e');
      // 如果加载失败，确保至少有一条欢迎消息
      if (_messages.isEmpty) {
        _addWelcomeMessage();
      }
    }
  }
  
  // 添加欢迎消息
  void _addWelcomeMessage() {
    final userName = widget.userData['nickname'] ?? 'User';
    
    _addMessage(
      'Hi, I\'m $userName. How can I help you today?',
      false,
      messageType: MessageType.text,
      isLocalImage: false,
    );
  }
  
  // 保存聊天历史记录
  Future<void> _saveChatHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // 将消息列表转换为JSON
      final List<Map<String, dynamic>> chatHistoryList = _messages.map((message) {
        return message.toJson();
      }).toList();
      
      final chatHistoryJson = jsonEncode(chatHistoryList);
      
      // 保存到SharedPreferences
      await prefs.setString(_chatId, chatHistoryJson);
      
      debugPrint('Saved ${_messages.length} messages for chat $_chatId');
    } catch (e) {
      debugPrint('Error saving chat history: $e');
    }
  }
  
  // 初始化音频会话
  Future<void> _initializeAudioSession() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration(
      avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
      avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.allowBluetooth,
      avAudioSessionMode: AVAudioSessionMode.defaultMode,
    ));
  }

  // 初始化用户背景
  void _initUserBackground() {
    // 从用户数据中获取背景图，如果没有则设置默认
    final userBackgroundPath = widget.userData['background_image'];
    if (userBackgroundPath != null && userBackgroundPath.isNotEmpty) {
      _userBackgroundImage = userBackgroundPath;
    } else {
      // 使用随机背景或默认背景
      _userBackgroundImage = 'assets/images/default_background.jpg';
      
      // 或者从用户照片生成背景
      final userPhoto = widget.userData['userphoto'];
      if (userPhoto != null && userPhoto.isNotEmpty) {
        _userBackgroundImage = userPhoto;
      }
    }
  }

  @override
  void dispose() {
    // 取消文本控制器和滚动控制器
    _messageController.dispose();
    _scrollController.dispose();
    
    // 确保停止任何正在进行的录音
    if (_isRecording) {
      try {
        _recorder.stop();
      } catch (e) {
        debugPrint('Error stopping recorder during dispose: $e');
      }
    }
    
    // 释放录音器资源
    _recorder.dispose();
    
    // 释放所有音频播放器资源 - 这里是关键
    for (final entry in _audioPlayers.entries) {
      try {
        final String messageId = entry.key;
        final AudioPlayer player = entry.value;
        
        // 取消所有播放状态
        _isPlayingAudio[messageId] = false;
        
        // 停止所有可能的流监听
        try {
          player.playerStateStream.drain().catchError((_) {});
          player.positionStream.drain().catchError((_) {});
          player.bufferedPositionStream.drain().catchError((_) {});
          player.processingStateStream.drain().catchError((_) {});
          player.playbackEventStream.drain().catchError((_) {});
        } catch (_) {}
        
        // 停止播放
        try {
          if (player.playing) {
            player.stop().catchError((_) {});
          }
        } catch (_) {}
        
        // 释放资源
        try {
          player.dispose().catchError((_) {});
        } catch (_) {}
      } catch (e) {
        debugPrint('Error disposing audio player: $e');
      }
    }
    
    // 清空音频播放器和状态映射
    _audioPlayers.clear();
    _isPlayingAudio.clear();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                widget.userData['userphoto'] ?? 'assets/images/default_avatar.png',
              ),
              radius: 16,
            ),
            const SizedBox(width: 8),
            Text(
              widget.userData['nickname'] ?? 'Unknown',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_userBackgroundImage),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.7),
              BlendMode.darken,
            ),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.black.withOpacity(0.3),
            child: Stack(
              children: [
                Column(
                  children: [
                    // 顶部空间 - 防止内容被AppBar遮挡
                    SizedBox(height: AppBar().preferredSize.height + MediaQuery.of(context).padding.top),
                    
                    // 聊天消息列表
                    Expanded(
                      child: ListView.builder(
                        controller: _scrollController,
                        padding: const EdgeInsets.all(16),
                        itemCount: _messages.length,
                        itemBuilder: (context, index) {
                          final message = _messages[index];
                          return _buildMessageItem(message);
                        },
                      ),
                    ),
          
                    // 底部输入框
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).padding.bottom + 8,
                        left: 8,
                        right: 8,
                        top: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                          width: 0.5,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          // 相册按钮
                          IconButton(
                            icon: const Icon(Icons.photo, color: Colors.white70),
                            onPressed: _pickImageFromGallery,
                          ),
                          
                          // 文本输入框
                          Expanded(
                            child: !_isRecording 
                              ? TextField(
                                  controller: _messageController,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: const InputDecoration(
                                    hintText: 'Type a message...',
                                    hintStyle: TextStyle(color: Colors.white60),
                                    border: InputBorder.none,
                                  ),
                                  textCapitalization: TextCapitalization.sentences,
                                  onSubmitted: (text) => _sendTextMessage(),
                                )
                              : Center(
                                  child: Text(
                                    'Recording: $_recordDuration s',
                                    style: TextStyle(color: Colors.white.withOpacity(0.8)),
                                  ),
                                ),
                          ),
                          
                          // 语音按钮
                          GestureDetector(
                            onLongPress: _startRecording,
                            onLongPressEnd: (_) => _stopRecording(),
                            child: IconButton(
                              icon: Icon(
                                _isRecording ? Icons.mic : Icons.mic_none,
                                color: _isRecording ? Colors.red : Colors.white70,
                              ),
                              onPressed: _isRecording ? _stopRecording : () {
                                // 点击录音按钮，显示提示弹窗
                                _showRecordingDialog();
                              },
                            ),
                          ),
                          
                          // 发送按钮
                          if (!_isRecording && _messageController.text.isNotEmpty)
                            IconButton(
                              icon: const Icon(Icons.send, color: Colors.blue),
                              onPressed: _sendTextMessage,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                
                // 录音取消区域（上滑取消）
                if (_isRecording)
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: MediaQuery.of(context).padding.bottom + 80,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white24, width: 0.5),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.keyboard_arrow_up, color: Colors.white),
                            const SizedBox(height: 4),
                            const Text(
                              'Slide up to cancel',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.red, width: 4),
                                color: Colors.redAccent.withOpacity(0.2),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.mic,
                                  color: Colors.red,
                                  size: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 构建消息气泡
  Widget _buildMessageItem(ChatMessage message) {
    final isMyMessage = message.isMyMessage;
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isMyMessage) ...[
            CircleAvatar(
              backgroundImage: AssetImage(
                widget.userData['userphoto'] ?? 'assets/images/default_avatar.png',
              ),
              radius: 16,
            ),
            const SizedBox(width: 8),
          ],
          
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            padding: message.type == MessageType.text 
                ? const EdgeInsets.all(12) 
                : const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: isMyMessage ? Colors.blue : Colors.grey[800],
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(16),
                topRight: const Radius.circular(16),
                bottomLeft: !isMyMessage ? Radius.zero : const Radius.circular(16),
                bottomRight: isMyMessage ? Radius.zero : const Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 消息内容
                _buildMessageContent(message),
                
                // 时间戳
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    message.time,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          if (isMyMessage) ...[
            const SizedBox(width: 8),
            const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, color: Colors.white, size: 16),
              radius: 16,
            ),
          ],
        ],
      ),
    );
  }

  // 根据消息类型构建不同内容
  Widget _buildMessageContent(ChatMessage message) {
    switch (message.type) {
      case MessageType.text:
        return Text(
          message.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        );
        
      case MessageType.image:
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ImagePreviewScreen(
                  imagePath: message.text,
                  isLocalImage: message.isLocalImage,
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 200,  // 固定宽度
              height: 200, // 固定高度
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(12),
              ),
              child: message.isLocalImage
                ? Image.file(
                    File(message.text),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      debugPrint('Error loading local image: $error');
                      return const Center(
                        child: Icon(Icons.broken_image, color: Colors.white, size: 36),
                      );
                    },
                  )
                : Image.asset(
                    message.text,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(Icons.broken_image, color: Colors.white),
                      );
                    },
                  ),
            ),
          ),
        );
        
      case MessageType.voice:
        final messageId = '${message.time}_${message.isMyMessage ? 'my' : 'other'}';
        final isPlaying = _isPlayingAudio[messageId] ?? false;
        final durationText = message.duration != null
            ? '${message.duration}s'
            : message.text;
        
        return GestureDetector(
          onTap: () => _playVoiceMessage(message.text, messageId),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            width: 200,
            child: Row(
              children: [
                Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                  size: 24,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: isPlaying ? 100 : 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            isPlaying ? 'Playing...' : 'Voice message',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            durationText,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
        
      default:
        return Text(
          message.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        );
    }
  }

  // 从相册选择图片
  Future<void> _pickImageFromGallery() async {
    try {
      final XFile? pickedImage = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 70,
      );
      
      if (pickedImage != null) {
        setState(() {
          _addMessage(
            pickedImage.path,
            true,
            messageType: MessageType.image,
            isLocalImage: true,
          );
        });
        
        _scrollToBottom();
        _saveChatHistory(); // 保存聊天历史
      }
    } catch (e) {
      // 如果选择图片失败，回退到使用随机资源图片
      debugPrint('Error picking image: $e');
      _useRandomAssetImage();
    }
  }
  
  // 回退方法：使用随机资源图片
  void _useRandomAssetImage() {
    final randomImage = 'assets/images/alluser/${_getRandomImagePath()}';
    _addMessage(
      randomImage,
      true,
      messageType: MessageType.image,
      isLocalImage: false,
    );
    
    _scrollToBottom();
  }

  // 获取随机图片路径
  String _getRandomImagePath() {
    final categories = ['cos', 'game', 'anim'];
    final category = categories[Random().nextInt(categories.length)];
    final number = Random().nextInt(5) + 1;
    return '$category/cc_$number/post.jpg';
  }

  // 开始录音
  Future<void> _startRecording() async {
    try {
      // 检查并请求录音权限
      if (!await _recorder.hasPermission()) {
        debugPrint('No microphone permission');
        return;
      }
      
      // 创建临时录音文件
      final tempDir = await getTemporaryDirectory();
      final filePath = '${tempDir.path}/audio_${DateTime.now().millisecondsSinceEpoch}.m4a';
      
      // 配置录音
      await _recorder.start(
        const RecordConfig(
          encoder: AudioEncoder.aacLc,
          bitRate: 128000,
          sampleRate: 44100,
        ),
        path: filePath,
      );
      
      _recordingStartTime = DateTime.now();
      _currentRecordingPath = filePath;
      
      setState(() {
        _isRecording = true;
        _recordDuration = 0;
      });
      
      // 更新录音时长
      _updateRecordingDuration();
      
    } catch (e) {
      debugPrint('Error starting recording: $e');
    }
  }
  
  // 更新录音时长
  void _updateRecordingDuration() {
    if (!_isRecording || _recordingStartTime == null || !mounted) return;
    
    // 使用局部变量捕获当前状态以避免闭包问题
    final startTime = _recordingStartTime;
    
    Future.delayed(const Duration(seconds: 1), () {
      // 再次检查组件是否已销毁，以及录音状态
      if (!mounted || !_isRecording || startTime != _recordingStartTime) return;
      
      setState(() {
        _recordDuration = DateTime.now().difference(startTime!).inSeconds;
      });
      
      // 递归调用以每秒更新一次
      _updateRecordingDuration();
    });
  }

  // 停止录音并发送
  Future<void> _stopRecording() async {
    if (!_isRecording) return;
    
    try {
      // 停止录音
      final path = await _recorder.stop();
      
      setState(() {
        _isRecording = false;
      });
      
      if (path != null && _recordDuration > 0) {
        // 发送语音消息
        _addMessage(
          path,
          true,
          messageType: MessageType.voice,
          isLocalImage: false,
          duration: _recordDuration,
        );
        
        _scrollToBottom();
        _saveChatHistory(); // 保存聊天历史
      }
    } catch (e) {
      debugPrint('Error stopping recording: $e');
    }
  }
  
  // 取消录音
  Future<void> _cancelRecording() async {
    if (!_isRecording) return;
    
    try {
      await _recorder.stop();
      
      // 删除临时文件
      if (_currentRecordingPath != null) {
        final file = File(_currentRecordingPath!);
        if (await file.exists()) {
          await file.delete();
        }
      }
    } catch (e) {
      debugPrint('Error canceling recording: $e');
    }
    
    setState(() {
      _isRecording = false;
    });
  }
  
  // 播放语音消息
  Future<void> _playVoiceMessage(String audioPath, String messageId) async {
    // 检查组件是否已销毁
    if (!mounted) return;
    
    // 添加一个标志，用于跟踪页面是否已销毁
    bool localMounted = mounted;
    
    // 检查是否已存在该消息的播放器
    if (!_audioPlayers.containsKey(messageId)) {
      final player = AudioPlayer();
      _audioPlayers[messageId] = player;
      
      try {
        // 判断是本地文件还是模拟的语音数据
        if (audioPath.contains('sec')) {
          // 这是模拟的语音数据，实际开发中应该只处理真实文件
          debugPrint('Simulated audio playback for: $audioPath');
          
          // 模拟播放时间
          if (localMounted && mounted) {
            setState(() {
              _isPlayingAudio[messageId] = true;
            });
          } else {
            return; // 如果组件已销毁，直接返回
          }
          
          await Future.delayed(const Duration(seconds: 3));
          
          // 再次检查组件是否已销毁
          if (localMounted && mounted) {
            setState(() {
              _isPlayingAudio[messageId] = false;
            });
          }
          
          return;
        }
        
        // 防止文件不存在导致的错误
        final audioFile = File(audioPath);
        if (!await audioFile.exists()) {
          debugPrint('Audio file does not exist: $audioPath');
          if (localMounted && mounted) {
            setState(() {
              _isPlayingAudio[messageId] = false;
            });
          }
          _audioPlayers.remove(messageId);
          return;
        }
        
        // 真实音频文件处理
        await player.setFilePath(audioPath).catchError((e) {
          debugPrint('Error setting file path: $e');
          throw e;
        });
        
        // 再次检查组件是否已销毁
        if (!localMounted || !mounted) {
          // 如果页面已销毁，释放资源
          await player.stop().catchError((_) {});
          await player.dispose().catchError((_) {});
          _audioPlayers.remove(messageId);
          return;
        }
        
        // 仅当组件仍然存在时设置状态
        setState(() {
          _isPlayingAudio[messageId] = true;
        });
        
        // 使用完成回调而不是流监听，避免流关闭异常
        player.playbackEventStream.listen(
          (event) {
            // 不在这里做任何setState
          },
          onError: (Object e, StackTrace? stackTrace) {
            debugPrint('Playback error: $e');
            // 错误处理 - 但不要setState
          },
          onDone: () {
            debugPrint('Playback event stream done');
            // 流完成 - 无需处理
          },
          cancelOnError: false,
        );
        
        // 完成时的一次性监听
        player.processingStateStream
            .where((state) => state == ProcessingState.completed)
            .take(1)
            .listen(
          (state) {
            if (localMounted && mounted) {
              setState(() {
                _isPlayingAudio[messageId] = false;
              });
            }
          },
          onError: (_) {},
          cancelOnError: false,
        );
        
        // 开始播放，捕获播放中可能发生的错误
        await player.play().catchError((e) {
          debugPrint('Error playing audio: $e');
          if (localMounted && mounted) {
            setState(() {
              _isPlayingAudio[messageId] = false;
            });
          }
        });
        
      } catch (e) {
        debugPrint('Error in voice message playback: $e');
        
        // 清理资源时不使用setState - 可能是在dispose后调用
        _isPlayingAudio[messageId] = false;
        
        // 清理资源
        if (_audioPlayers.containsKey(messageId)) {
          try {
            final playerToDispose = _audioPlayers[messageId];
            if (playerToDispose != null) {
              await playerToDispose.stop().catchError((_) {});
              await playerToDispose.dispose().catchError((_) {});
            }
          } catch (_) {}
          _audioPlayers.remove(messageId);
        }
        
        // 只有当组件仍然挂载时，才更新UI
        if (localMounted && mounted) {
          setState(() {}); // 空的setState只是为了刷新UI
        }
      }
    } else {
      // 已有播放器，暂停或恢复播放
      if (!localMounted || !mounted) return;
      
      try {
        final player = _audioPlayers[messageId];
        if (player == null) return;
        
        final isPlaying = _isPlayingAudio[messageId] == true;
        
        if (isPlaying) {
          // 暂停播放
          await player.pause().catchError((e) {
            debugPrint('Error pausing audio: $e');
          });
          
          if (localMounted && mounted) {
            setState(() {
              _isPlayingAudio[messageId] = false;
            });
          }
        } else {
          // 恢复播放
          await player.seek(Duration.zero).catchError((_) {});
          await player.play().catchError((e) {
            debugPrint('Error resuming audio: $e');
          });
          
          if (localMounted && mounted) {
            setState(() {
              _isPlayingAudio[messageId] = true;
            });
          }
        }
      } catch (e) {
        debugPrint('Error toggling audio playback: $e');
        
        // 错误处理 - 清理资源，但不使用setState
        _isPlayingAudio[messageId] = false;
        
        if (_audioPlayers.containsKey(messageId)) {
          try {
            final playerToDispose = _audioPlayers[messageId];
            if (playerToDispose != null) {
              await playerToDispose.stop().catchError((_) {});
              await playerToDispose.dispose().catchError((_) {});
            }
          } catch (_) {}
          _audioPlayers.remove(messageId);
        }
        
        // 只有当组件仍然挂载时，才更新UI
        if (localMounted && mounted) {
          setState(() {}); // 空的setState只是为了刷新UI
        }
      }
    }
  }

  // 显示录音提示弹窗
  void _showRecordingDialog() {
    showDialog(
      context: context, 
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: AlertDialog(
          backgroundColor: Colors.grey[900]?.withOpacity(0.9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Colors.white.withOpacity(0.1)),
          ),
          title: const Text(
            'Voice Message',
            style: TextStyle(color: Colors.white),
          ),
          content: const Text(
            'Press and hold the mic button to record a voice message. Release to send.',
            style: TextStyle(color: Colors.white70),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Got it', style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }

  // 发送文本消息
  void _sendTextMessage() {
    final text = _messageController.text.trim();
    if (text.isEmpty) return;

    // 添加用户消息
    setState(() {
      _addMessage(text, true, messageType: MessageType.text, isLocalImage: false);
      _messageController.clear();
    });

    // 自动滚动到底部
    _scrollToBottom();
    
    // 保存聊天历史
    _saveChatHistory();
  }

  // 添加消息到列表
  void _addMessage(
    String text,
    bool isMyMessage, {
    required MessageType messageType,
    required bool isLocalImage,
    int? duration,
  }) {
    final now = DateTime.now();
    final timeStr = '${now.hour}:${now.minute.toString().padLeft(2, '0')}';
    
    _messages.add(ChatMessage(
      text: text,
      isMyMessage: isMyMessage,
      time: timeStr,
      type: messageType,
      isLocalImage: isLocalImage,
      duration: duration,
      timestamp: now.millisecondsSinceEpoch,
    ));
    
    // 更新最新消息到消息列表页
    _updateLatestMessage(text, messageType);
  }
  
  // 更新最新消息到消息列表页
  Future<void> _updateLatestMessage(String text, MessageType type) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // 获取现有的消息列表
      final messageListJson = prefs.getString('message_list') ?? '[]';
      List<dynamic> messageList = jsonDecode(messageListJson);
      
      // 提取用户信息
      final userData = {
        'id': widget.userData['id']?.toString() ?? '',
        'nickname': widget.userData['nickname']?.toString() ?? 'User',
        'userphoto': widget.userData['userphoto']?.toString() ?? 'assets/images/default_avatar.png',
        'chatId': _chatId, // 确保保存chatId
      };
      
      // 格式化最新消息内容
      String messagePreview;
      switch (type) {
        case MessageType.text:
          messagePreview = text;
          break;
        case MessageType.image:
          messagePreview = '[Image]';
          break;
        case MessageType.voice:
          messagePreview = '[Voice Message]';
          break;
        default:
          messagePreview = text;
      }
      
      // 时间戳
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      
      // 创建或更新消息条目
      Map<String, dynamic> messageEntry = {
        'user': userData,
        'lastMessage': messagePreview,
        'timestamp': timestamp,
        'chatId': _chatId,
        'unread': 0, // 自己发送的不计为未读
      };
      
      // 检查是否已有该用户的消息记录
      bool found = false;
      for (int i = 0; i < messageList.length; i++) {
        if (messageList[i]['chatId'] == _chatId) {
          messageList[i] = messageEntry;
          found = true;
          break;
        }
      }
      
      // 如果没有找到，添加新条目
      if (!found) {
        messageList.add(messageEntry);
      }
      
      // 按时间戳排序，最新的在前面
      messageList.sort((a, b) => 
        (b['timestamp'] as int).compareTo(a['timestamp'] as int));
      
      // 保存更新后的消息列表
      await prefs.setString('message_list', jsonEncode(messageList));
      
      debugPrint('Updated message list with chatId: $_chatId');
    } catch (e) {
      debugPrint('Error updating message list: $e');
    }
  }

  // 滚动到底部
  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }
}

// 消息类型枚举
enum MessageType {
  text,
  image,
  voice,
}

// 聊天消息数据模型
class ChatMessage {
  final String text;
  final bool isMyMessage;
  final String time;
  final MessageType type;
  final bool isLocalImage;
  final int? duration; // 语音消息的时长（秒）
  final int timestamp; // 添加时间戳字段用于排序
  
  ChatMessage({
    required this.text,
    required this.isMyMessage,
    required this.time,
    required this.type,
    required this.isLocalImage,
    this.duration,
    int? timestamp,
  }) : timestamp = timestamp ?? DateTime.now().millisecondsSinceEpoch;
  
  // 从JSON转换回ChatMessage
  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      text: json['text'],
      isMyMessage: json['isMyMessage'],
      time: json['time'],
      type: MessageType.values.firstWhere(
        (e) => e.toString() == json['type'],
        orElse: () => MessageType.text,
      ),
      isLocalImage: json['isLocalImage'],
      duration: json['duration'],
      timestamp: json['timestamp'],
    );
  }
  
  // 转换为JSON
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'isMyMessage': isMyMessage,
      'time': time,
      'type': type.toString(),
      'isLocalImage': isLocalImage,
      'duration': duration,
      'timestamp': timestamp,
    };
  }
} 