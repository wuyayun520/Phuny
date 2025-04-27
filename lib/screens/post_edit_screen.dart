import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math';
import 'dart:convert';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class PostEditScreen extends StatefulWidget {
  final Function(Map<String, dynamic>, String) onPostCreated;
  
  const PostEditScreen({
    super.key,
    required this.onPostCreated,
  });

  @override
  State<PostEditScreen> createState() => _PostEditScreenState();
}

class _PostEditScreenState extends State<PostEditScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  String _selectedCategory = 'Cos'; // 默认分类
  File? _selectedImage;
  bool _isUploading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> _categories = ['Cos', 'Games', 'Anime'];
  final ImagePicker _imagePicker = ImagePicker();
  
  // 用户信息
  Map<String, dynamic> _userProfile = {
    'id': 'user_default',
    'nickname': 'User',
    'userphoto': 'assets/images/default_avatar.png',
  };
  
  // 用于在没有真实图片上传功能的情况下使用
  final List<String> _sampleImages = [
    'assets/images/sample_post1.png',
    'assets/images/sample_post2.png',
    'assets/images/sample_post3.png',
    'assets/images/sample_post4.png',
    'assets/images/sample_post5.png',
  ];
  String _selectedSampleImage = '';
  
  @override
  void initState() {
    super.initState();
    _loadUserProfile();
  }
  
  // 加载用户资料
  Future<void> _loadUserProfile() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // 首先尝试从user_name和user_avatar_path加载（来自UserProfileScreen的配置）
      final userName = prefs.getString('user_name');
      final userAvatarPath = prefs.getString('user_avatar_path');
      
      bool userDataLoaded = false;
      
      if (userName != null) {
        setState(() {
          _userProfile['nickname'] = userName;
          if (userAvatarPath != null) {
            _userProfile['userphoto'] = userAvatarPath;
          }
          // 生成随机ID，如果不存在
          if (_userProfile['id'] == 'user_default') {
            _userProfile['id'] = 'user_${DateTime.now().millisecondsSinceEpoch}';
          }
        });
        userDataLoaded = true;
        debugPrint('Loaded user profile from UserProfileScreen: $userName');
        
        // 将此配置同步到user_profile中
        await prefs.setString('user_profile', json.encode(_userProfile));
      }
      
      // 如果没有找到UserProfileScreen的配置，尝试从user_profile加载
      if (!userDataLoaded) {
        final profileJson = prefs.getString('user_profile');
        
        if (profileJson != null && profileJson.isNotEmpty) {
          final profile = json.decode(profileJson);
          setState(() {
            _userProfile = Map<String, dynamic>.from(profile);
          });
          debugPrint('Loaded user profile from JSON: ${_userProfile['nickname']}');
          
          // 将此配置同步到user_name和user_avatar_path中
          await prefs.setString('user_name', _userProfile['nickname']);
          await prefs.setString('user_avatar_path', _userProfile['userphoto']);
        } else {
          // 如果没有找到用户资料，使用随机用户信息并保存
          _generateAndSaveUserProfile();
        }
      }
    } catch (e) {
      debugPrint('Error loading user profile: $e');
      _generateAndSaveUserProfile();
    }
  }
  
  // 生成并保存随机用户资料（仅在首次使用时）
  Future<void> _generateAndSaveUserProfile() async {
    try {
      // 生成随机用户ID
      final userId = 'user_${DateTime.now().millisecondsSinceEpoch}';
      
      // 生成随机昵称
      final List<String> randomNames = [
        'StarGazer', 'CosPlayHero', 'AnimeQueen', 'GamerKing', 
        'PixelWizard', 'OtakuMaster', 'MagicCrafter', 'DreamWalker'
      ];
      final nickname = '${randomNames[Random().nextInt(randomNames.length)]}${Random().nextInt(1000)}';
      
      // 随机选择预设头像
      final List<String> avatars = [
        'assets/images/avatar1.png',
        'assets/images/avatar2.png',
        'assets/images/avatar3.png',
        'assets/images/avatar4.png',
        'assets/images/default_avatar.png'
      ];
      final userphoto = avatars[Random().nextInt(avatars.length)];
      
      // 创建用户资料
      final profile = {
        'id': userId,
        'nickname': nickname,
        'userphoto': userphoto,
      };
      
      // 保存到本地存储 - 同时保存到两种格式
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('user_profile', json.encode(profile));
      await prefs.setString('user_name', nickname);
      await prefs.setString('user_avatar_path', userphoto);
      
      // 更新状态
      setState(() {
        _userProfile = profile;
      });
      
      debugPrint('Generated and saved new user profile: $nickname');
    } catch (e) {
      debugPrint('Error generating user profile: $e');
    }
  }
  
  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }
  
  // 从图库选择图片
  Future<void> _pickImage() async {
    try {
      final XFile? pickedImage = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1000,
        maxHeight: 1000,
        imageQuality: 85,
      );
      
      if (pickedImage != null) {
        setState(() {
          _selectedImage = File(pickedImage.path);
          _selectedSampleImage = ''; // 清空示例图片选择
        });
      }
    } catch (e) {
      debugPrint('Error picking image: $e');
      // 如果图片选择器有问题，使用示例图片
      _showSampleImagePicker();
    }
  }
  
  // 显示示例图片选择器
  void _showSampleImagePicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Select a sample image',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _sampleImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedSampleImage = _sampleImages[index];
                            _selectedImage = null; // 清空真实图片选择
                          });
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: _selectedSampleImage == _sampleImages[index]
                                ? Border.all(color: Colors.blue, width: 3)
                                : null,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              _sampleImages[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  
  // 发布帖子
  Future<void> _submitPost() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    
    // 检查是否选择了图片
    if (_selectedImage == null && _selectedSampleImage == '') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select an image for your post')),
      );
      return;
    }
    
    setState(() {
      _isUploading = true;
    });
    
    try {
      // 获取当前时间
      final now = DateTime.now();
      final timestamp = now.millisecondsSinceEpoch;
      final formattedTime = _formatPostTime(now);
      
      // 处理图片路径
      String finalImagePath = '';
      
      if (_selectedImage != null) {
        // 如果是从相册选择的图片，复制到应用内部存储
        final appDir = await getApplicationDocumentsDirectory();
        final postImagesDir = Directory('${appDir.path}/post_images');
        if (!await postImagesDir.exists()) {
          await postImagesDir.create(recursive: true);
        }
        
        // 创建文件名
        final fileName = 'post_image_$timestamp.jpg';
        final savedImagePath = '${postImagesDir.path}/$fileName';
        
        // 复制图片文件
        await File(_selectedImage!.path).copy(savedImagePath);
        finalImagePath = savedImagePath;
        
        debugPrint('Saved image to app directory: $savedImagePath');
      } else if (_selectedSampleImage.isNotEmpty) {
        // 如果是示例图片，直接使用资源路径
        finalImagePath = _selectedSampleImage;
      } else {
        // 默认图片
        finalImagePath = 'assets/images/default_post.png';
      }
      
      // 创建帖子数据
      final Map<String, dynamic> postData = {
        'id': 'local_post_$timestamp',
        'title': _titleController.text.trim(),
        'content': _contentController.text.trim(),
        'imag': finalImagePath,
        'timestamp': timestamp,
        'likes': 0, // 初始点赞数为0
        'favorites': 0, // 初始收藏数为0
        'author': {
          'id': _userProfile['id'],
          'nickname': _userProfile['nickname'],
          'userphoto': _userProfile['userphoto'],
          'postTime': formattedTime,
        },
        'comments': [], // 初始评论为空
      };
      
      // 模拟网络延迟
      await Future.delayed(const Duration(milliseconds: 800));
      
      // 调用父组件提供的回调函数，将新帖子添加到对应分类
      widget.onPostCreated(postData, _selectedCategory);
      
      // 显示成功消息
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Post published successfully!')),
        );
        
        // 返回上一页
        Navigator.pop(context);
      }
    } catch (e) {
      debugPrint('Error creating post: $e');
      setState(() {
        _isUploading = false;
      });
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    }
  }
  
  // 格式化发布时间
  String _formatPostTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);
    
    if (difference.inSeconds < 60) {
      return 'just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minute${difference.inMinutes == 1 ? '' : 's'} ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hour${difference.inHours == 1 ? '' : 's'} ago';
    } else if (difference.inDays < 30) {
      return '${difference.inDays} day${difference.inDays == 1 ? '' : 's'} ago';
    } else {
      return '${dateTime.month}/${dateTime.day}/${dateTime.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Create Post'),
        centerTitle: true,
        backgroundColor: const Color(0xFFEE71F9),
        elevation: 0,
        actions: [
          // 发布按钮
          _isUploading
            ? const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                ),
              )
            : IconButton(
                icon: const Icon(Icons.check),
                onPressed: _submitPost,
              ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // 用户信息（头像和昵称）
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(_userProfile['userphoto']),
                ),
                const SizedBox(width: 12),
                Text(
                  _userProfile['nickname'],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 20),
            
            // 标题输入框
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                hintText: 'Enter your post title',
                fillColor: Colors.grey[100],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.title),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter a title';
                }
                if (value.length < 3) {
                  return 'Title must be at least 3 characters';
                }
                return null;
              },
              maxLength: 60,
            ),
            
            const SizedBox(height: 16),
            
            // 分类选择
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      itemBuilder: (context, index) {
                        final category = _categories[index];
                        final isSelected = category == _selectedCategory;
                        
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: ChoiceChip(
                            label: Text(category),
                            selected: isSelected,
                            onSelected: (selected) {
                              if (selected) {
                                setState(() {
                                  _selectedCategory = category;
                                });
                              }
                            },
                            selectedColor: const Color(0xFFEE71F9),
                            labelStyle: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 16),
            
            // 图片选择区域
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1,
                  ),
                ),
                child: _selectedImage != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(
                          _selectedImage!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      )
                    : _selectedSampleImage != ''
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              _selectedSampleImage,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_photo_alternate,
                                size: 50,
                                color: Colors.grey[400],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Add Photo',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextButton(
                                onPressed: _showSampleImagePicker,
                                child: const Text('or Choose Sample Image'),
                              ),
                            ],
                          ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // 内容输入框
            TextFormField(
              controller: _contentController,
              decoration: InputDecoration(
                labelText: 'Content',
                hintText: 'Write your post content here...',
                alignLabelWithHint: true,
                fillColor: Colors.grey[100],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter some content';
                }
                if (value.length < 10) {
                  return 'Content must be at least 10 characters';
                }
                return null;
              },
              maxLines: 8,
              minLines: 6,
            ),
            
            const SizedBox(height: 24),
            
            // 发布按钮
            ElevatedButton(
              onPressed: _isUploading ? null : _submitPost,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEE71F9),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                disabledBackgroundColor: Colors.grey[300],
              ),
              child: _isUploading
                  ? const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text('Publishing...'),
                      ],
                    )
                  : const Text(
                      'Publish Post',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
} 