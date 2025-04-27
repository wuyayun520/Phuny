import 'package:flutter/material.dart';
import 'dart:math';
import 'chat_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'post_detail_screen.dart';

class UserDetailScreen extends StatefulWidget {
  final Map<String, dynamic> userData;
  
  const UserDetailScreen({
    super.key,
    required this.userData,
  });

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  // 统计数据，使用普通变量并立即初始化
  int _followers = 0;
  int _following = 0;
  int _likes = 0;
  bool _expandedIntro = false;
  bool _isFollowing = false; // 是否已关注
  bool _isBlocked = false; // 是否已拉黑

  @override
  void initState() {
    super.initState();
    // 生成随机统计数据
    _generateRandomStats();
    // 随机初始化关注状态
    _isFollowing = Random().nextBool();
    // 加载拉黑状态
    _loadBlockedStatus();
  }
  
  // 加载拉黑状态
  Future<void> _loadBlockedStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userId = _getUserId();
      
      // 获取已拉黑用户列表
      final blockedUsers = prefs.getStringList('blocked_users') ?? [];
      
      setState(() {
        // 如果当前用户在拉黑列表中，标记为已拉黑
        _isBlocked = blockedUsers.contains(userId);
      });
    } catch (e) {
      debugPrint('Error loading blocked status: $e');
    }
  }
  
  // 保存拉黑状态
  Future<void> _saveBlockedStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userId = _getUserId();
      
      // 获取现有的拉黑列表
      final blockedUsers = prefs.getStringList('blocked_users') ?? [];
      
      if (_isBlocked) {
        // 如果用户被拉黑，将其添加到拉黑列表（避免重复添加）
        if (!blockedUsers.contains(userId)) {
          blockedUsers.add(userId);
        }
      } else {
        // 如果用户被取消拉黑，从拉黑列表中移除
        blockedUsers.remove(userId);
      }
      
      // 保存更新后的拉黑列表
      await prefs.setStringList('blocked_users', blockedUsers);
      
      debugPrint('Blocked users list updated: $blockedUsers');
    } catch (e) {
      debugPrint('Error saving blocked status: $e');
    }
  }
  
  // 获取用户唯一标识符
  String _getUserId() {
    // 使用用户数据中的唯一标识字段，这里使用nickname作为示例
    // 实际应用中应该使用更可靠的唯一ID
    final userId = _safeGet('id') != '' ? _safeGet('id') : _safeGet('nickname', 'unknown_user');
    return userId;
  }
  
  // 安全地获取用户数据
  String _safeGet(String key, [String defaultValue = '']) {
    try {
      return widget.userData[key]?.toString() ?? defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }
  
  // 生成随机统计数据的方法
  void _generateRandomStats() {
    final random = Random();
    _followers = random.nextInt(10000) + 100;
    _following = random.nextInt(1000) + 50;
    _likes = random.nextInt(50000) + 1000;
    
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      body: _buildUserDetail(),
    );
  }
  
  // 举报用户功能
  void _reportUser() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Report User', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.grey[900],
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Why are you reporting this user?',
                style: TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 16),
              _buildReportOption('Inappropriate content'),
              _buildReportOption('Fake profile'),
              _buildReportOption('Harassment or bullying'),
              _buildReportOption('Spam'),
              _buildReportOption('Other'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel', style: TextStyle(color: Colors.white70)),
            ),
          ],
        );
      },
    );
  }
  
  // 构建举报选项
  Widget _buildReportOption(String reason) {
    return InkWell(
      onTap: () {
        // 提交举报
        Navigator.pop(context);
        _showReportSubmittedDialog(reason);
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white.withOpacity(0.1))),
        ),
        child: Text(
          reason,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
  
  // 显示举报已提交的确认弹窗
  void _showReportSubmittedDialog(String reason) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Report Submitted', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.grey[900],
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.check_circle, color: Colors.green, size: 48),
              const SizedBox(height: 16),
              Text(
                'Your report for "$reason" has been submitted.',
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'We\'ll review this profile as soon as possible.',
                style: TextStyle(color: Colors.white70, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK', style: TextStyle(color: Colors.blue)),
            ),
          ],
        );
      },
    );
  }
  
  // 拉黑用户功能
  void _toggleBlockUser() async {
    setState(() {
      _isBlocked = !_isBlocked;
    });
    
    // 保存拉黑状态
    await _saveBlockedStatus();
    
    final message = _isBlocked
        ? '${_safeGet('nickname', 'User')} has been blocked'
        : '${_safeGet('nickname', 'User')} has been unblocked';
    
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: _isBlocked ? Colors.red.shade800 : Colors.green,
      action: SnackBarAction(
        label: 'Undo',
        textColor: Colors.white,
        onPressed: () async {
          setState(() {
            _isBlocked = !_isBlocked;
          });
          // 保存更新后的拉黑状态
          await _saveBlockedStatus();
        },
      ),
    );
    
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  
  // 构建用户详情页
  Widget _buildUserDetail() {
    // 安全地获取帖子数据
    final posts = <dynamic>[];
    try {
      if (widget.userData['post'] != null) {
        posts.addAll(widget.userData['post'] as List);
      }
    } catch (e) {
      debugPrint('Error loading posts: $e');
    }
      
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 用户背景图片和头像
          Stack(
            clipBehavior: Clip.none,
            children: [
              // 背景图
              Container(
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.grey[800], // 默认背景色
                  image: DecorationImage(
                    image: _getBackgroundImage(),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
              
              // 返回按钮和操作按钮
              Positioned(
                top: MediaQuery.of(context).padding.top + 10,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 返回按钮
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    
                    // 更多操作按钮
                    PopupMenuButton<String>(
                      icon: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      color: Colors.grey[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      onSelected: (value) {
                        if (value == 'report') {
                          _reportUser();
                        } else if (value == 'block') {
                          _toggleBlockUser();
                        }
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem<String>(
                          value: 'report',
                          child: Row(
                            children: [
                              Icon(
                                Icons.report_problem,
                                color: Colors.orange[400],
                                size: 18,
                              ),
                              const SizedBox(width: 12),
                              const Text(
                                'Report',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'block',
                          child: Row(
                            children: [
                              Icon(
                                _isBlocked ? Icons.person_add : Icons.block,
                                color: _isBlocked ? Colors.green : Colors.red[400],
                                size: 18,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                _isBlocked ? 'Unblock User' : 'Block User',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              // 用户头像 - 位置在背景底部，部分超出
              Positioned(
                bottom: -50,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[800],
                      border: Border.all(color: Colors.white, width: 4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                      image: DecorationImage(
                        image: _getUserPhotoImage(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          
          // 用户信息部分 - 为头像留出空间
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 用户名称（独立一行显示）
                Text(
                  _safeGet('nickname', 'Unknown'),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                const SizedBox(height: 12),
                
                // 关注和聊天按钮放在单独一行
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildFollowButton(),
                    const SizedBox(width: 16),
                    _buildChatButton(),
                  ],
                ),
                
                // 已拉黑提示
                if (_isBlocked)
                Container(
                    margin: const EdgeInsets.only(top: 12),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.red.withOpacity(0.5)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.block,
                          color: Colors.red,
                          size: 14,
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          'You\'ve blocked this user',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                
                const SizedBox(height: 16),
                
                // 用户介绍
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _expandedIntro = !_expandedIntro;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        _safeGet('Introduction', _safeGet('introduction', 'No introduction')),
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 14,
                          height: 1.4,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: _expandedIntro ? null : 6,
                        overflow: _expandedIntro ? null : TextOverflow.ellipsis,
                      ),
                      if (!_expandedIntro && _safeGet('Introduction', _safeGet('introduction')).length > 150)
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            'Read more',
                            style: TextStyle(
                              color: Colors.blue[300],
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                
                const SizedBox(height: 24),
                
                // 用户数据统计
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildStatItem('Following', _formatCount(_following)),
                    Container(height: 30, width: 1, color: Colors.white24, margin: const EdgeInsets.symmetric(horizontal: 20)),
                    _buildStatItem('Followers', _formatCount(_followers)),
                    Container(height: 30, width: 1, color: Colors.white24, margin: const EdgeInsets.symmetric(horizontal: 20)),
                    _buildStatItem('Likes', _formatCount(_likes)),
                  ],
                ),
                
                const SizedBox(height: 20),
                
                // 帖子标题
                const Padding(
                  padding: EdgeInsets.only(left: 12, bottom: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'All Posts',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // 用户帖子列表
          if (posts.isNotEmpty)
            _buildUserPosts(posts)
          else
            const Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'No posts yet',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
          
          // 底部留白
          const SizedBox(height: 20),
        ],
      ),
    );
  }
  
  // 构建数据统计项
  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
  
  // 构建用户所有帖子
  Widget _buildUserPosts(List<dynamic> posts) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          try {
            final post = posts[index] as Map<String, dynamic>;
            return _buildPostCard(post);
          } catch (e) {
            debugPrint('Error building post card: $e');
            return Container(
              color: Colors.grey[800],
              child: const Center(
                child: Text('Error loading post', style: TextStyle(color: Colors.white60)),
              ),
            );
          }
        },
      ),
    );
  }
  
  // 构建单个帖子卡片
  Widget _buildPostCard(Map<String, dynamic> post) {
    String? imageUrl;
    String? title;
    
    try {
      imageUrl = post['imag']?.toString();
      title = post['title']?.toString();
    } catch (e) {
      debugPrint('Error accessing post data: $e');
    }
    
    return GestureDetector(
      onTap: () {
        // 点击跳转到帖子详情页
        // 创建完整的帖子数据，添加作者信息
        final Map<String, dynamic> fullPostData = Map<String, dynamic>.from(post);
        // 添加作者信息到帖子数据中
        fullPostData['author'] = {
          'nickname': widget.userData['nickname'] ?? 'Unknown',
          'userphoto': widget.userData['userphoto'] ?? 'assets/images/default_avatar.png',
          'id': widget.userData['id'] ?? '',
          'postTime': '3 hours ago', // 这里可以根据实际情况设置
        };
        
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostDetailScreen(postData: fullPostData),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            // 帖子图片
            Expanded(
              child: imageUrl != null && imageUrl.isNotEmpty
                ? Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[800],
                        child: const Center(
                          child: Icon(
                            Icons.image_not_supported,
                            color: Colors.white60,
                          ),
                        ),
                      );
                    },
                  )
                : Container(
                    color: Colors.grey[800],
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        color: Colors.white60,
                      ),
                    ),
                  ),
            ),
            
            // 帖子标题
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title ?? 'No Title',
                  style: const TextStyle(
                    color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
            ),
          ],
          ),
      ),
    );
  }
  
  // 格式化计数，对大于1000的数值以K为单位显示
  String _formatCount(int count) {
    if (count >= 1000) {
      final double countInK = count / 1000;
      return '${countInK.toStringAsFixed(1)}K';
    }
    return count.toString();
  }

  // 获取背景图像，增加错误处理
  ImageProvider _getBackgroundImage() {
    try {
      final String bgPath = _safeGet('userbg');
      final String iconBgPath = _safeGet('usericonbg');
      
      // 尝试从路径加载图片
      if (bgPath.isNotEmpty) {
        return AssetImage(bgPath);
      } else if (iconBgPath.isNotEmpty) {
        return AssetImage(iconBgPath);
      } else {
        // 使用默认背景
        return const AssetImage('assets/images/cc_home_bg.png');
      }
    } catch (e) {
      debugPrint('Error loading background image: $e');
      // 出错时使用默认背景
      return const AssetImage('assets/images/cc_home_bg.png');
    }
  }

  // 获取用户头像图像，增加错误处理
  ImageProvider _getUserPhotoImage() {
    try {
      final String photoPath = _safeGet('userphoto');
      if (photoPath.isNotEmpty) {
        return AssetImage(photoPath);
      } else {
        return const AssetImage('assets/images/default_avatar.png');
      }
    } catch (e) {
      debugPrint('Error loading user photo: $e');
      return const AssetImage('assets/images/default_avatar.png');
    }
  }

  // 构建聊天按钮
  Widget _buildChatButton() {
    // 构建聊天ID
    final userId = _safeGet('id') != '' ? _safeGet('id') : _safeGet('nickname', 'unknown_user');
    final chatId = 'chat_with_$userId';
    
    // 创建包含chatId的用户数据副本
    final userDataWithChatId = Map<String, dynamic>.from(widget.userData);
    userDataWithChatId['chatId'] = chatId;
    
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => ChatScreen(userData: userDataWithChatId),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              spreadRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
          gradient: const LinearGradient(
            colors: [Color(0xFF4CAF50), Color(0xFF2E7D32)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.chat_bubble_outline,
              color: Colors.white,
              size: 16,
            ),
            SizedBox(width: 4),
            Text(
              'Chat',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 构建关注按钮
  Widget _buildFollowButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isFollowing = !_isFollowing;
          
          // 更新粉丝数量
          if (_isFollowing) {
            _followers++;
          } else {
            _followers = (_followers > 0) ? _followers - 1 : 0;
          }
        });
        
        // 显示提示
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(_isFollowing ? 'Following user' : 'Unfollowed user'),
            duration: const Duration(seconds: 1),
            backgroundColor: _isFollowing ? Colors.green : Colors.red.shade800,
          ),
        );
      },
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
    );
  }
} 