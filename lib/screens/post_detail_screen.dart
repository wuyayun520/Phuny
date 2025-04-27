import 'package:flutter/material.dart';
import 'dart:math'; // 导入Random包用于生成随机数据
import 'dart:io';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class PostDetailScreen extends StatefulWidget {
  final Map<String, dynamic> postData;
  
  const PostDetailScreen({
    super.key,
    required this.postData,
  });

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  late Map<String, dynamic> _postData;
  late int _likeCount;
  late int _favoriteCount;
  late bool _isLiked;
  late bool _isFavorite;
  bool _isFollowing = false; // 直接初始化为false，不使用late修饰符
  final TextEditingController _commentController = TextEditingController();
  bool _isMyPost = false; // 是否是自己的帖子
  Map<String, dynamic> _myUserProfile = {
    'id': 'current_user',
    'nickname': 'Me',
    'userphoto': 'assets/images/default_avatar.png',
  };
  
  final List<Map<String, dynamic>> _dummyUsers = [
    {
      'id': 'user1',
      'nickname': 'Jessica Parker',
      'userphoto': 'assets/images/avatar1.png',
    },
    {
      'id': 'user2',
      'nickname': 'Michael Johnson',
      'userphoto': 'assets/images/avatar2.png',
    },
    {
      'id': 'user3',
      'nickname': 'Emma Wilson',
      'userphoto': 'assets/images/avatar3.png',
    },
    {
      'id': 'user4',
      'nickname': 'David Thompson',
      'userphoto': 'assets/images/avatar4.png',
    },
    {
      'id': 'user5',
      'nickname': 'Olivia Martinez',
      'userphoto': 'assets/images/avatar5.png',
    },
  ];
  final List<String> _commentTexts = [
    "This is absolutely gorgeous! Love the details.",
    "I've been looking for something like this for ages!",
    "Amazing work! How long did it take to create?",
    "The colors are stunning, what's your inspiration?",
    "I need more content like this, please keep posting!",
    "This is why I follow your account. Quality content!",
    "Can you share your process for creating this?",
    "Wow, I'm speechless! This is incredible work.",
    "Just perfect! Can't stop looking at it.",
    "This deserves way more attention!",
  ];
  
  @override
  void initState() {
    super.initState();
    // 克隆postData以便可以在状态中修改它
    _postData = Map<String, dynamic>.from(widget.postData);
    
    // 加载当前用户资料
    _loadUserProfile();
    
    // 生成随机的点赞和收藏数量
    final random = Random();
    _likeCount = _postData['likes'] ?? random.nextInt(200) + 50;
    _favoriteCount = _postData['favorites'] ?? random.nextInt(100) + 20;
    
    // 初始点赞和收藏状态
    _isLiked = false;
    _isFavorite = false;
    
    // 从SharedPreferences加载关注状态
    _loadFollowingStatus();
    
    // 注意：在loadUserProfile中完成_checkIfMyPost后，再决定是否要生成随机评论
    // 因此，我们不在这里处理评论生成，而是在loadUserProfile结束后处理
  }
  
  // 加载当前用户资料
  Future<void> _loadUserProfile() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // 首先尝试从UserProfileScreen中加载用户资料
      final userName = prefs.getString('user_name');
      final userAvatarPath = prefs.getString('user_avatar_path');
      
      // 尝试从post_edit_screen中获取user_profile
      final profileJson = prefs.getString('user_profile');
      
      if (userName != null) {
        // 从UserProfileScreen加载的用户资料
        setState(() {
          _myUserProfile['nickname'] = userName;
          if (userAvatarPath != null) {
            _myUserProfile['userphoto'] = userAvatarPath;
          }
          if (_myUserProfile['id'] == 'current_user') {
            _myUserProfile['id'] = 'user_${DateTime.now().millisecondsSinceEpoch}';
          }
        });
        debugPrint('Loaded user profile from UserProfileScreen: $userName');
        
        // 如果user_profile不存在，将此配置同步到user_profile
        if (profileJson == null || profileJson.isEmpty) {
          await prefs.setString('user_profile', json.encode(_myUserProfile));
        }
      } else if (profileJson != null && profileJson.isNotEmpty) {
        // 从PostEditScreen加载的用户资料
        final profile = json.decode(profileJson);
        setState(() {
          _myUserProfile = Map<String, dynamic>.from(profile);
        });
        debugPrint('Loaded user profile from JSON: ${_myUserProfile['nickname']}');
        
        // 同步到UserProfileScreen的配置
        await prefs.setString('user_name', _myUserProfile['nickname']);
        await prefs.setString('user_avatar_path', _myUserProfile['userphoto']);
      }
      
      debugPrint('Current user profile: ${_myUserProfile['nickname']}, photo: ${_myUserProfile['userphoto']}');
      
      // 加载完用户资料后立即检查是否是自己的帖子，强制更新作者信息
      _checkIfMyPost();
      
      // 在确认了帖子所有权后，处理评论
      _handleCommentsInitialization();
    } catch (e) {
      debugPrint('Error loading user profile: $e');
    }
  }
  
  // 处理评论初始化
  void _handleCommentsInitialization() {
    if (!_postData.containsKey('comments') || (_postData['comments'] as List).isEmpty) {
      setState(() {
        if (!_isMyPost) {
          // 只有不是自己的帖子才生成随机评论
          _generateRandomComments();
          debugPrint('Generated random comments for non-user post');
        } else {
          // 如果是自己的帖子，创建空的评论列表
          _postData['comments'] = [];
          debugPrint('Created empty comments list for user post');
        }
      });
    } else {
      debugPrint('Post already has comments: ${(_postData['comments'] as List).length}');
    }
  }
  
  // 检查是否是自己的帖子
  void _checkIfMyPost() {
    if (_postData.containsKey('author') && _postData['author'] is Map) {
      final author = _postData['author'] as Map<String, dynamic>;
      
      // 如果帖子作者ID与当前用户ID相同，或者用户昵称相同，则认为是自己的帖子
      final isMyPost = author['id'] == _myUserProfile['id'] || 
                        author['nickname'] == _myUserProfile['nickname'];
      
      setState(() {
        _isMyPost = isMyPost;
      });
      
      debugPrint('Is my post: $_isMyPost');
      
      // 如果是自己的帖子，确保作者信息使用最新的用户资料
      if (_isMyPost) {
        // 更新帖子作者信息为最新的用户资料
        author['nickname'] = _myUserProfile['nickname'];
        author['userphoto'] = _myUserProfile['userphoto'];
        debugPrint('Updated post author info with current user profile: ${_myUserProfile['nickname']}');
      }
    }
  }
  
  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }
  
  // 加载关注状态
  Future<void> _loadFollowingStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final authorId = _getAuthorId();
      
      // 获取已关注用户列表
      final followingUsers = prefs.getStringList('following_users') ?? [];
      
      setState(() {
        // 如果作者在关注列表中，标记为已关注
        _isFollowing = followingUsers.contains(authorId);
      });
    } catch (e) {
      debugPrint('Error loading following status: $e');
    }
  }
  
  // 保存关注状态
  Future<void> _saveFollowingStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final authorId = _getAuthorId();
      
      // 获取现有的关注列表
      final followingUsers = prefs.getStringList('following_users') ?? [];
      
      if (_isFollowing) {
        // 如果关注了作者，将其添加到关注列表（避免重复添加）
        if (!followingUsers.contains(authorId)) {
          followingUsers.add(authorId);
        }
      } else {
        // 如果取消关注，从关注列表中移除
        followingUsers.remove(authorId);
      }
      
      // 保存更新后的关注列表
      await prefs.setStringList('following_users', followingUsers);
      
      debugPrint('Following users list updated: $followingUsers');
    } catch (e) {
      debugPrint('Error saving following status: $e');
    }
  }
  
  // 获取作者ID
  String _getAuthorId() {
    if (_postData.containsKey('author') && _postData['author'] is Map) {
      final author = _postData['author'] as Map<String, dynamic>;
      // 使用作者的唯一标识符，优先使用id，否则使用昵称
      return author['id']?.toString() ?? author['nickname']?.toString() ?? 'unknown_author';
    }
    return 'unknown_author';
  }
  
  // 切换关注状态
  Future<void> _toggleFollowing() async {
    setState(() {
      _isFollowing = !_isFollowing;
    });
    
    // 保存关注状态
    await _saveFollowingStatus();
    
    // 显示提示
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_isFollowing ? 'Following user' : 'Unfollowed user'),
          duration: const Duration(seconds: 1),
          backgroundColor: _isFollowing ? Colors.green : Colors.red.shade800,
        ),
      );
    }
  }
  
  // 生成随机评论
  void _generateRandomComments() {
    final random = Random();
    // 生成1到5条随机评论
    final commentCount = random.nextInt(5) + 1;
    final List<Map<String, dynamic>> comments = [];
    
    // 从可能的评论和用户中随机选择
    for (int i = 0; i < commentCount; i++) {
      final userIndex = random.nextInt(_dummyUsers.length);
      final commentIndex = random.nextInt(_commentTexts.length);
      
      // 计算随机时间 (1分钟到3天前)
      final minutesAgo = random.nextInt(4320) + 1; // 最多3天(4320分钟)
      final timeString = _formatTimeAgo(minutesAgo);
      
      comments.add({
        'id': 'comment${i + 1}',
        'userphoto': _dummyUsers[userIndex]['userphoto'],
        'nickname': _dummyUsers[userIndex]['nickname'],
        'content': _commentTexts[commentIndex],
        'time': timeString,
        'likes': random.nextInt(50),
      });
    }
    
    // 按时间排序，最新的在最上面
    comments.sort((a, b) {
      final aTime = a['time'] as String;
      final bTime = b['time'] as String;
      return aTime.compareTo(bTime);
    });
    
    _postData['comments'] = comments;
  }
  
  // 格式化时间为"x分钟前"，"x小时前"等
  String _formatTimeAgo(int minutesAgo) {
    if (minutesAgo < 60) {
      return '$minutesAgo minutes ago';
    } else if (minutesAgo < 1440) {
      final hours = (minutesAgo / 60).floor();
      return '$hours ${hours == 1 ? 'hour' : 'hours'} ago';
    } else {
      final days = (minutesAgo / 1440).floor();
      return '$days ${days == 1 ? 'day' : 'days'} ago';
    }
  }
  
  // 添加新评论
  void _addComment() {
    if (_commentController.text.trim().isEmpty) return;
    
    setState(() {
      final comments = _postData['comments'] as List<dynamic>;
      comments.insert(0, {
        'id': 'new_comment_${DateTime.now().millisecondsSinceEpoch}',
        'userphoto': _myUserProfile['userphoto'],
        'nickname': _myUserProfile['nickname'],
        'content': _commentController.text.trim(),
        'time': 'just now',
        'likes': 0,
      });
      
      _commentController.clear();
    });
  }
  
  // 切换点赞状态
  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
      _likeCount += _isLiked ? 1 : -1;
    });
  }
  
  // 切换收藏状态
  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
      _favoriteCount += _isFavorite ? 1 : -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.share_outlined),
            onPressed: () {
              // 实现分享功能
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Share functionality coming soon!')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 帖子图片
            _buildPostImage(),
            
            // 帖子内容区域
            _buildPostContent(context),
            
            // 评论区
            _buildCommentsSection(context),
          ],
        ),
      ),
    );
  }
  
  // 构建帖子图片
  Widget _buildPostImage() {
    final imagePath = _postData['imag'] ?? 'assets/images/placeholder.png';
    
    debugPrint('Building post image: $imagePath');
    
    return Stack(
      children: [
        // 帖子图片
        SizedBox(
          width: double.infinity,
          height: 400,
          child: buildImageFromPath(imagePath, fit: BoxFit.cover),
        ),
        
        // 渐变遮罩
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
        ),
        
        // 帖子标题
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Text(
            _postData['title'] ?? 'Untitled Post',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 3,
                  color: Colors.black45,
                ),
              ],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
  
  // 构建帖子内容
  Widget _buildPostContent(BuildContext context) {
    // 获取作者信息 (如果帖子数据中包含)
    final authorData = _postData['author'] as Map<String, dynamic>?;
    
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 作者信息
          if (authorData != null) _buildAuthorInfo(authorData),
          
          // 帖子内容
          const SizedBox(height: 16),
          Text(
            _postData['content'] ?? 'No content',
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF333333),
              height: 1.5,
            ),
          ),
          
          // 互动区域 (点赞、收藏、评论数)
          const SizedBox(height: 24),
          _buildInteractionBar(context),
        ],
      ),
    );
  }
  
  // 构建作者信息行
  Widget _buildAuthorInfo(Map<String, dynamic> authorData) {
    // a开取作者头像
    final userPhoto = authorData['userphoto'] ?? 'assets/images/default_avatar.png';
    
    // 调试输出
    debugPrint('Building author info with: ${authorData['nickname']}, photo: $userPhoto');
    
    return Row(
      children: [
        // 作者头像
        buildAvatarFromPath(userPhoto, radius: 24),
        const SizedBox(width: 12),
        
        // 作者名称和发布时间
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                authorData['nickname'] ?? 'Unknown',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                'Posted ${authorData['postTime'] ?? 'recently'}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF999999),
                ),
              ),
            ],
          ),
        ),
        
        // 关注按钮 - 只有不是自己的帖子才显示
        if (!_isMyPost)
          GestureDetector(
            onTap: _toggleFollowing,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: _isFollowing ? Colors.grey.withOpacity(0.3) : Colors.blue,
                border: Border.all(
                  color: _isFollowing ? Colors.grey : Colors.blue,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    _isFollowing ? Icons.check : Icons.add,
                    color: Colors.white,
                    size: 14,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    _isFollowing ? 'Following' : 'Follow',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
  
  // 互动栏 (点赞、收藏、评论)
  Widget _buildInteractionBar(BuildContext context) {
    final commentCount = _postData['comments'] != null 
        ? (_postData['comments'] as List).length 
        : 0;
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInteractionButton(
          icon: _isLiked ? Icons.favorite : Icons.favorite_border,
          iconColor: _isLiked ? Colors.red : const Color(0xFF666666),
          label: '$_likeCount',
          onTap: _toggleLike,
        ),
        _buildInteractionButton(
          icon: _isFavorite ? Icons.bookmark : Icons.bookmark_border,
          iconColor: _isFavorite ? const Color(0xFFEE71F9) : const Color(0xFF666666),
          label: '$_favoriteCount',
          onTap: _toggleFavorite,
        ),
        _buildInteractionButton(
          icon: Icons.chat_bubble_outline,
          label: '$commentCount',
          onTap: () {
            // 滚动到评论区
            Scrollable.ensureVisible(
              context,
              alignment: 0.8,
              duration: const Duration(milliseconds: 300),
            );
          },
        ),
      ],
    );
  }
  
  // 构建互动按钮
  Widget _buildInteractionButton({
    required IconData icon,
    Color iconColor = const Color(0xFF666666),
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 22,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF666666),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
  
  // 构建评论区
  Widget _buildCommentsSection(BuildContext context) {
    final List<dynamic> comments = _postData['comments'] ?? [];
    
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color(0xFFF8F8F8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 评论区标题
          const Text(
            'Comments',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF333333),
            ),
          ),
          const SizedBox(height: 16),
          
          // 评论列表
          if (comments.isEmpty)
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'No comments yet. Be the first to comment!',
                  style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 15,
                  ),
                ),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: comments.length,
              separatorBuilder: (context, index) => const Divider(height: 24),
              itemBuilder: (context, index) {
                final comment = comments[index] as Map<String, dynamic>;
                return _buildCommentItem(comment);
              },
            ),
            
          // 底部评论输入框
          const SizedBox(height: 20),
          _buildCommentInput(context),
        ],
      ),
    );
  }
  
  // 构建评论项
  Widget _buildCommentItem(Map<String, dynamic> comment) {
    final String userPhoto = comment['userphoto'] ?? 'assets/images/default_avatar.png';
    
    debugPrint('Building comment by: ${comment['nickname']}, photo: $userPhoto');
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 评论者头像
        buildAvatarFromPath(userPhoto, radius: 20),
        const SizedBox(width: 12),
        
        // 评论内容
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 评论者名称
              Text(
                comment['nickname'] ?? 'Unknown',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 4),
              
              // 评论内容
              Text(
                comment['content'] ?? '',
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF666666),
                ),
              ),
              
              // 评论时间、点赞和回复按钮
              const SizedBox(height: 6),
              Row(
                children: [
                  Text(
                    comment['time'] ?? 'Unknown time',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF999999),
                    ),
                  ),
                  const Spacer(),
                  
                  // 点赞按钮
                  GestureDetector(
                    onTap: () {
                      // 点赞评论
                      setState(() {
                        comment['liked'] = !(comment['liked'] ?? false);
                        comment['likes'] = (comment['likes'] ?? 0) + (comment['liked'] ? 1 : -1);
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          comment['liked'] ?? false ? Icons.favorite : Icons.favorite_border,
                          size: 14,
                          color: comment['liked'] ?? false ? Colors.red : const Color(0xFF999999),
                        ),
                        const SizedBox(width: 2),
                        Text(
                          '${comment['likes'] ?? 0}',
                          style: TextStyle(
                            fontSize: 12,
                            color: comment['liked'] ?? false ? Colors.red : const Color(0xFF999999),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(width: 16),
                  
                  // 回复按钮
                  GestureDetector(
                    onTap: () {
                      // 实现回复功能
                      _commentController.text = '@${comment['nickname']} ';
                      FocusScope.of(context).requestFocus(FocusNode());
                      Future.delayed(const Duration(milliseconds: 100), () {
                        FocusScope.of(context).requestFocus(FocusNode());
                      });
                    },
                    child: const Text(
                      'Reply',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFEE71F9),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  // 构建评论输入框
  Widget _buildCommentInput(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 2),
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _commentController,
              decoration: const InputDecoration(
                hintText: 'Add your comment...',
                hintStyle: TextStyle(color: Color(0xFF999999)),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              style: const TextStyle(fontSize: 14),
              maxLines: 1,
            ),
          ),
          const SizedBox(width: 12),
          InkWell(
            onTap: _addComment,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Color(0xFFEE71F9),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.send,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 处理图片路径，确保能正确处理无论是相对路径还是绝对路径
  Widget buildImageFromPath(String path, {double? width, double? height, BoxFit fit = BoxFit.cover}) {
    debugPrint('Building image from path: $path');
    
    if (path.startsWith('/') || path.contains('/var/') || path.contains('/Users/')) {
      // 绝对路径处理 - 检查文件是否存在
      final file = File(path);
      if (file.existsSync()) {
        return Image.file(
          file,
          width: width,
          height: height,
          fit: fit,
          errorBuilder: (context, error, stackTrace) {
            debugPrint('Error loading file image: $error');
            return Image.asset(
              'assets/images/default_avatar.png',
              width: width,
              height: height,
              fit: fit,
            );
          },
        );
      } else {
        debugPrint('File does not exist: $path');
        return Image.asset(
          'assets/images/default_avatar.png',
          width: width,
          height: height,
          fit: fit,
        );
      }
    } else if (path.startsWith('assets/')) {
      // 资源路径处理
      return Image.asset(
        path,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) {
          debugPrint('Error loading asset image: $error');
          return Image.asset(
            'assets/images/default_avatar.png',
            width: width,
            height: height,
            fit: fit,
          );
        },
      );
    } else if (path.startsWith('http')) {
      // 网络图片处理
      return Image.network(
        path,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) {
          debugPrint('Error loading network image: $error');
          return Image.asset(
            'assets/images/default_avatar.png',
            width: width,
            height: height,
            fit: fit,
          );
        },
      );
    } else {
      // 默认情况，尝试作为资源加载
      return Image.asset(
        'assets/images/default_avatar.png',
        width: width,
        height: height,
        fit: fit,
      );
    }
  }
  
  // 构建头像组件
  Widget buildAvatarFromPath(String path, {double radius = 24.0}) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey[200],
      child: ClipOval(
        child: SizedBox(
          width: radius * 2,
          height: radius * 2,
          child: buildImageFromPath(path, fit: BoxFit.cover),
        ),
      ),
    );
  }
} 