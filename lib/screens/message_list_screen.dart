import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'chat_screen.dart';

class MessageListScreen extends StatefulWidget {
  const MessageListScreen({super.key});

  @override
  State<MessageListScreen> createState() => _MessageListScreenState();
}

class _MessageListScreenState extends State<MessageListScreen> {
  List<Map<String, dynamic>> _messageList = [];
  List<Map<String, dynamic>> _filteredMessageList = [];
  bool _isLoading = true;
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  
  // 记录被删除的对话，用于撤销
  Map<String, dynamic>? _lastDeletedConversation;
  int _lastDeletedIndex = -1;

  // 颜色主题
  final Color _primaryColor = const Color(0xFFEE71F9);
  final Color _backgroundColor = const Color(0xFFF8F0FB);
  final Color _cardColor = Colors.white;
  final Color _textColor = const Color(0xFF333333);
  final Color _secondaryTextColor = const Color(0xFF707070);
  final Color _accentColor = const Color(0xFFEE71F9);
  final Color _deleteColor = const Color(0xFFFF5252);
  final LinearGradient _appBarGradient = const LinearGradient(
    colors: [Color(0xFFEE71F9), Color(0xFFC245D5)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  void initState() {
    super.initState();
    _loadMessageList();
    _searchController.addListener(_onSearchChanged);
  }
  
  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  // 搜索文本变化监听
  void _onSearchChanged() {
    _filterMessages(_searchController.text);
  }
  
  // 搜索过滤消息
  void _filterMessages(String query) {
    if (query.isEmpty) {
      setState(() {
        _filteredMessageList = List.from(_messageList);
      });
      return;
    }
    
    final queryLower = query.toLowerCase();
    setState(() {
      _filteredMessageList = _messageList.where((message) {
        final userData = message['user'] as Map<String, dynamic>;
        final userName = (userData['nickname'] ?? '').toString().toLowerCase();
        final lastMessage = (message['lastMessage'] ?? '').toString().toLowerCase();
        
        return userName.contains(queryLower) || lastMessage.contains(queryLower);
      }).toList();
    });
  }

  // 切换搜索模式
  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (!_isSearching) {
        _searchController.clear();
        _filteredMessageList = List.from(_messageList);
      } else {
        // 当打开搜索框时，给它焦点
        Future.delayed(const Duration(milliseconds: 100), () {
          _searchFocusNode.requestFocus();
        });
      }
    });
  }

  // 加载消息列表
  Future<void> _loadMessageList() async {
    setState(() {
      _isLoading = true;
    });
    
    try {
      final prefs = await SharedPreferences.getInstance();
      final messageListJson = prefs.getString('message_list') ?? '[]';
      List<dynamic> messageList = jsonDecode(messageListJson);
      
      setState(() {
        _messageList = List<Map<String, dynamic>>.from(messageList);
        _filteredMessageList = List.from(_messageList);
        _isLoading = false;
      });
      
      debugPrint('Loaded ${_messageList.length} conversations');
    } catch (e) {
      debugPrint('Error loading message list: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  // 格式化时间显示
  String _formatTime(int timestamp) {
    final messageDate = DateTime.fromMillisecondsSinceEpoch(timestamp);
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final messageDay = DateTime(messageDate.year, messageDate.month, messageDate.day);
    
    // 格式化时间
    String hours = messageDate.hour.toString().padLeft(2, '0');
    String minutes = messageDate.minute.toString().padLeft(2, '0');
    
    if (messageDay == today) {
      // 今天的消息只显示时间
      return '$hours:$minutes';
    } else if (messageDay == yesterday) {
      // 昨天的消息显示"昨天"
      return 'Yesterday';
    } else {
      // 更早的消息显示日期
      return '${messageDate.month}/${messageDate.day}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: _backgroundColor,
      appBar: _buildAppBar(),
      body: _isLoading 
          ? Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(_primaryColor),
              ),
            )
          : _filteredMessageList.isEmpty
              ? _buildEmptyState()
              : _buildMessageList(),
    );
  }
  
  // 构建AppBar
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      title: _isSearching
          ? TextField(
              controller: _searchController,
              focusNode: _searchFocusNode,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              decoration: InputDecoration(
                hintText: 'Search messages or users...',
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.8)),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                isDense: true,
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear, color: Colors.white, size: 20),
                  onPressed: () {
                    _searchController.clear();
                  },
                ),
              ),
              cursorColor: Colors.white,
              textInputAction: TextInputAction.search,
              autocorrect: false,
              textAlignVertical: TextAlignVertical.center,
            )
          : const Text(
              'Messages',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
      flexibleSpace: Container(
        decoration: BoxDecoration(gradient: _appBarGradient),
      ),
      actions: [
        IconButton(
          icon: Icon(
            _isSearching ? Icons.arrow_back : Icons.search, 
            color: Colors.white
          ),
          onPressed: _toggleSearch,
        ),
      ],
    );
  }

  // 构建消息列表
  Widget _buildMessageList() {
    return Container(
      decoration: BoxDecoration(
        color: _backgroundColor,
      ),
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 12, bottom: 100),
        itemCount: _filteredMessageList.length,
        itemBuilder: (context, index) {
          final messageData = _filteredMessageList[index];
          final userData = messageData['user'] as Map<String, dynamic>;
          final lastMessage = messageData['lastMessage'] as String;
          final timestamp = messageData['timestamp'] as int;
          final unread = messageData['unread'] as int? ?? 0;
          final chatId = messageData['chatId'] as String?;
          
          // 确保userData中包含chatId
          if (chatId != null && !userData.containsKey('chatId')) {
            userData['chatId'] = chatId;
          }
          
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: _buildDismissibleTile(
              userData: userData,
              lastMessage: lastMessage,
              timestamp: timestamp,
              unread: unread,
              chatId: chatId ?? '',
              searchQuery: _searchController.text,
              index: index,
            ),
          );
        },
      ),
    );
  }

  // 构建可滑动删除的列表项
  Widget _buildDismissibleTile({
    required Map<String, dynamic> userData,
    required String lastMessage,
    required int timestamp,
    required int unread,
    required String chatId,
    required String searchQuery,
    required int index,
  }) {
    return Dismissible(
      key: Key('message_$chatId'),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: _deleteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.delete, color: Colors.white),
            SizedBox(height: 4),
            Text(
              'Delete',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
      confirmDismiss: (direction) async {
        return await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              title: const Text("Delete Conversation"),
              content: const Text(
                "Are you sure you want to delete this conversation? All chat history will be permanently deleted.",
              ),
              actions: [
                TextButton(
                  child: const Text("Cancel", style: TextStyle(color: Colors.grey)),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
                TextButton(
                  child: Text("Delete", style: TextStyle(color: _deleteColor)),
                  onPressed: () => Navigator.of(context).pop(true),
                ),
              ],
            );
          },
        );
      },
      onDismissed: (direction) {
        _deleteConversation(index);
      },
      child: _buildMessageTile(
        userData: userData,
        lastMessage: lastMessage,
        timestamp: timestamp,
        unread: unread,
        chatId: chatId,
        searchQuery: searchQuery,
      ),
    );
  }
  
  // 删除对话
  void _deleteConversation(int index) {
    try {
      final deletedConversation = _filteredMessageList[index];
      final chatId = deletedConversation['chatId'] as String?;
      
      setState(() {
        // 保存被删除的对话，用于撤销
        _lastDeletedConversation = Map<String, dynamic>.from(deletedConversation);
        _lastDeletedIndex = _messageList.indexWhere((item) => item['chatId'] == chatId);
        
        // 从过滤列表和主列表中删除
        _filteredMessageList.removeAt(index);
        if (_lastDeletedIndex != -1) {
          _messageList.removeAt(_lastDeletedIndex);
        }
      });
      
      // 保存更新后的消息列表
      _saveMessageList();
      
      // 删除聊天历史记录
      if (chatId != null) {
        _deleteChatHistory(chatId);
      }
      
      // 显示撤销操作的SnackBar
      _showUndoSnackBar();
      
    } catch (e) {
      debugPrint('Error deleting conversation: $e');
    }
  }
  
  // 显示撤销操作的SnackBar
  void _showUndoSnackBar() {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Conversation deleted'),
        action: SnackBarAction(
          label: 'UNDO',
          textColor: Colors.white,
          onPressed: _undoDelete,
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: _deleteColor,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
  
  // 撤销删除操作
  void _undoDelete() {
    try {
      if (_lastDeletedConversation != null && _lastDeletedIndex != -1) {
        setState(() {
          // 恢复对话到原来的位置
          if (_lastDeletedIndex >= 0 && _lastDeletedIndex <= _messageList.length) {
            _messageList.insert(_lastDeletedIndex, _lastDeletedConversation!);
          } else {
            _messageList.add(_lastDeletedConversation!);
          }
          
          // 重新过滤消息列表
          _filterMessages(_searchController.text);
        });
        
        // 保存更新后的消息列表
        _saveMessageList();
        
        // 重置
        _lastDeletedConversation = null;
        _lastDeletedIndex = -1;
      }
    } catch (e) {
      debugPrint('Error undoing delete: $e');
    }
  }
  
  // 删除聊天历史记录
  Future<void> _deleteChatHistory(String chatId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(chatId);
      debugPrint('Deleted chat history for: $chatId');
    } catch (e) {
      debugPrint('Error deleting chat history: $e');
    }
  }
  
  // 保存消息列表
  Future<void> _saveMessageList() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final messageListJson = jsonEncode(_messageList);
      await prefs.setString('message_list', messageListJson);
      debugPrint('Saved message list with ${_messageList.length} conversations');
    } catch (e) {
      debugPrint('Error saving message list: $e');
    }
  }

  // 构建消息列表项
  Widget _buildMessageTile({
    required Map<String, dynamic> userData,
    required String lastMessage,
    required int timestamp,
    required int unread,
    required String chatId,
    required String searchQuery,
  }) {
    final String userName = userData['nickname'] ?? 'User';
    final String userPhoto = userData['userphoto'] ?? '';
    
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: _cardColor,
      elevation: 1,
      shadowColor: Colors.black.withOpacity(0.1),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          // 确保传递chatId
          debugPrint('Opening chat with chatId: $chatId');
          if (!userData.containsKey('chatId')) {
            userData['chatId'] = chatId;
          }
          
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatScreen(userData: userData),
            ),
          ).then((_) {
            // 返回后刷新消息列表
            _loadMessageList();
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          child: Row(
            children: [
              // 用户头像
              Stack(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFFF5D0FE),
                      image: userPhoto.isNotEmpty
                          ? DecorationImage(
                              image: userPhoto.startsWith('assets/')
                                  ? AssetImage(userPhoto) as ImageProvider
                                  : FileImage(File(userPhoto)),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    child: userPhoto.isEmpty
                        ? const Center(
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 32,
                            ),
                          )
                        : null,
                  ),
                  if (unread > 0)
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: _accentColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 18,
                          minHeight: 18,
                        ),
                        child: Center(
                          child: Text(
                            unread.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(width: 16),
              // 消息内容和时间
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 用户名和时间
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // 用户名（匹配关键词高亮）
                        Expanded(
                          child: _buildHighlightedText(
                            text: userName,
                            searchQuery: searchQuery,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: unread > 0
                                  ? FontWeight.bold
                                  : FontWeight.w600,
                              color: _textColor,
                            ),
                          ),
                        ),
                        // 时间
                        Text(
                          _formatTime(timestamp),
                          style: TextStyle(
                            fontSize: 12,
                            color: unread > 0
                                ? _accentColor
                                : _secondaryTextColor,
                            fontWeight: unread > 0
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    // 最后一条消息预览（匹配关键词高亮）
                    _buildHighlightedText(
                      text: lastMessage,
                      searchQuery: searchQuery,
                      style: TextStyle(
                        fontSize: 14,
                        color: unread > 0
                            ? _textColor
                            : _secondaryTextColor,
                        fontWeight: unread > 0 ? FontWeight.w500 : FontWeight.normal,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  // 构建高亮文本
  Widget _buildHighlightedText({
    required String text,
    required String searchQuery,
    required TextStyle style,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    if (searchQuery.isEmpty || !text.toLowerCase().contains(searchQuery.toLowerCase())) {
      return Text(
        text,
        style: style,
        maxLines: maxLines,
        overflow: overflow,
      );
    }
    
    final matches = <Match>[];
    final regex = RegExp(searchQuery, caseSensitive: false);
    regex.allMatches(text).forEach((match) {
      matches.add(match);
    });
    
    final spans = <TextSpan>[];
    int currentIndex = 0;
    
    for (final match in matches) {
      if (match.start > currentIndex) {
        spans.add(TextSpan(
          text: text.substring(currentIndex, match.start),
          style: style,
        ));
      }
      
      spans.add(TextSpan(
        text: text.substring(match.start, match.end),
        style: style.copyWith(
          backgroundColor: _primaryColor.withOpacity(0.3),
          color: _primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ));
      
      currentIndex = match.end;
    }
    
    if (currentIndex < text.length) {
      spans.add(TextSpan(
        text: text.substring(currentIndex),
        style: style,
      ));
    }
    
    return RichText(
      text: TextSpan(children: spans),
      maxLines: maxLines,
      overflow: overflow ?? (_isSearching ? TextOverflow.clip : TextOverflow.ellipsis),
    );
  }
  
  // 构建空状态界面
  Widget _buildEmptyState() {
    // 搜索模式下的空状态
    if (_isSearching && _searchController.text.isNotEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off,
              size: 64,
              color: _primaryColor.withOpacity(0.5),
            ),
            const SizedBox(height: 12),
            Text(
              'No results found',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Try a different search term',
              style: TextStyle(
                fontSize: 14,
                color: _secondaryTextColor,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                _searchController.clear();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: const Text('Clear Search'),
            ),
          ],
        ),
      );
    }
    
    // 常规空状态
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_bubble_outline,
            size: 80,
            color: _primaryColor.withOpacity(0.5),
          ),
          const SizedBox(height: 16),
          Text(
            'No messages yet',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: _textColor,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Start a conversation by tapping on a user in the discover or magic tab',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: _secondaryTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
} 