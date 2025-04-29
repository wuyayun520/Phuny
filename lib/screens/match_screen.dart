import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/services.dart';
import 'user_detail_screen.dart';
import 'chat_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 自定义ScrollPhysics，根据VIP状态决定是否允许滑动
class SwipeLimitScrollPhysics extends ScrollPhysics {
  final bool Function() canSwipeCallback;
  
  const SwipeLimitScrollPhysics({
    required this.canSwipeCallback,
    ScrollPhysics? parent,
  }) : super(parent: parent);
  
  @override
  SwipeLimitScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return SwipeLimitScrollPhysics(
      canSwipeCallback: canSwipeCallback,
      parent: buildParent(ancestor),
    );
  }
  
  @override
  bool shouldAcceptUserOffset(ScrollMetrics position) {
    return canSwipeCallback();
  }
  
  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    if (!canSwipeCallback()) {
      return 0.0; // 不允许滑动时，抵消所有偏移
    }
    return super.applyPhysicsToUserOffset(position, offset);
  }
  
  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    if (!canSwipeCallback()) {
      // 不允许滑动时，防止页面移动
      if (value != position.pixels) {
        return value - position.pixels;
      }
    }
    return super.applyBoundaryConditions(position, value);
  }
}

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  // 所有用户数据
  List<Map<String, dynamic>> _allUsers = [];
  // 用于展示的随机用户
  List<Map<String, dynamic>> _displayUsers = [];
  // 当前显示的用户索引
  int _currentIndex = 0;
  // 加载状态
  bool _isLoading = true;
  // 页面控制器
  late PageController _pageController;

  // VIP状态和滑动计数
  bool _isVip = false;
  int _swipeCount = 0;
  final int _dailyLimit = 1;
  
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.75, // 调整为0.75，使左右卡片与中间卡片的距离更一致
    );
    _checkAndResetDailySwipes();
    _loadAllUserData();
    _loadSwipeStatus();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // 检查并重置每日滑动次数
  Future<void> _checkAndResetDailySwipes() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final lastResetDate = prefs.getString('last_swipe_reset_date');
      final today = DateTime.now().toString().split(' ')[0]; // 只保留日期部分 YYYY-MM-DD
      
      // 如果是新的一天，重置滑动计数
      if (lastResetDate != today) {
        // 在SharedPreferences中重置
        await prefs.setInt('daily_swipe_count', 0);
        await prefs.setString('last_swipe_reset_date', today);
        
        // 更新内存中的状态
        setState(() {
          _swipeCount = 0;
        });
        
        debugPrint('每日滑动次数已重置');
      }
    } catch (e) {
      debugPrint('检查并重置每日滑动次数出错: $e');
    }
  }

  // 加载所有用户数据
  Future<void> _loadAllUserData() async {
    try {
      // 加载三个分类的用户数据
      final cosData = await _loadJsonData('assets/data/cc_cosdata.json');
      final gameData = await _loadJsonData('assets/data/cc_gamedata.json');
      final animeData = await _loadJsonData('assets/data/cc_animdata.json');

      // 合并所有用户数据
      List<Map<String, dynamic>> cosUsers = List<Map<String, dynamic>>.from(cosData['userdata']);
      List<Map<String, dynamic>> gameUsers = List<Map<String, dynamic>>.from(gameData['userdata']);
      List<Map<String, dynamic>> animeUsers = List<Map<String, dynamic>>.from(animeData['userdata']);

      _allUsers = [...cosUsers, ...gameUsers, ...animeUsers];
      
      // 随机选择10个用户进行展示
      _selectRandomUsers();
      
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      debugPrint('Error loading user data: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  // 读取JSON数据
  Future<Map<String, dynamic>> _loadJsonData(String path) async {
    final String jsonString = await rootBundle.loadString(path);
    return json.decode(jsonString);
  }

  // 随机选择10个用户
  void _selectRandomUsers() {
    if (_allUsers.isEmpty) return;

    // 清空现有展示用户
    _displayUsers = [];

    // 随机选择10个不重复的用户
    final random = Random();
    final userIndices = <int>{};
    
    while (userIndices.length < 10 && userIndices.length < _allUsers.length) {
      userIndices.add(random.nextInt(_allUsers.length));
    }

    for (int index in userIndices) {
      _displayUsers.add(_allUsers[index]);
    }
  }

  // 加载滑动状态
  Future<void> _loadSwipeStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isVip = prefs.getBool('user_is_vip') ?? false;
      _swipeCount = prefs.getInt('daily_swipe_count') ?? 0; 
    });
  }
  
  // 增加滑动计数并保存
  Future<void> _incrementSwipeCount() async {
    if (_isVip) return; // VIP用户不计数
    
    setState(() {
      _swipeCount++;
    });
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('daily_swipe_count', _swipeCount);
    
    debugPrint('当前滑动次数: $_swipeCount, 每日限制: $_dailyLimit');
    
    // 如果刚好达到限制，显示提示
    if (_swipeCount == _dailyLimit) {
      Future.delayed(const Duration(milliseconds: 300), () {
        _showVipPrompt('You have used your free daily swipe');
      });
    }
  }
  
  // 检查是否可以滑动
  bool _canSwipe() {
    if (_isVip) return true;
    return _swipeCount < _dailyLimit;
  }

  // 处理卡片左滑拒绝
  void _handleReject() async {
    if (_displayUsers.isEmpty) return;

    // 检查是否可以滑动
    if (!_canSwipe()) {
      _showVipPrompt('Daily swipe limit reached');
      return;
    }
    
    // 非VIP用户增加滑动计数
    if (!_isVip) {
      await _incrementSwipeCount();
      
      // 如果增加计数后达到限制，不允许继续操作但显示提示
      if (!_canSwipe()) {
        _showVipPrompt('You have used your free daily swipe');
        return;
      }
    }
    
    debugPrint('拒绝按钮被点击，移除用户: ${_displayUsers[_currentIndex]['nickname']}');
    
    setState(() {
      // 从显示列表中移除当前用户
      _displayUsers.removeAt(_currentIndex);
      
      // 如果移除后列表为空，重新加载随机用户
      if (_displayUsers.isEmpty) {
        _isLoading = true;
        debugPrint('所有用户都已被移除，重新加载随机用户');
        // 延迟一下加载，给用户一个视觉反馈
        Future.delayed(const Duration(milliseconds: 300), () {
          _selectRandomUsers();
          setState(() {
            _isLoading = false;
          });
        });
        return;
      }
      
      // 如果移除的是最后一个用户，需要调整索引
      if (_currentIndex >= _displayUsers.length) {
        _currentIndex = _displayUsers.length - 1;
        debugPrint('调整当前索引为: $_currentIndex');
      }
      
      // 如果不是最后一个用户，则不需要移动页面，PageView会自动调整
      // 如果是，则跳转到新的最后一个
      if (_pageController.page?.toInt() != _currentIndex) {
        _pageController.jumpToPage(_currentIndex);
      }
    });
  }

  // 处理卡片右滑喜欢
  void _handleLike() async {
    if (_displayUsers.isEmpty) return;
    
    // 检查是否可以滑动
    if (!_canSwipe()) {
      _showVipPrompt('Daily swipe limit reached');
      return;
    }
    
    // 非VIP用户增加滑动计数
    if (!_isVip) {
      await _incrementSwipeCount();
      
      // 如果增加计数后达到限制，不允许翻页但显示提示
      if (!_canSwipe()) {
        _showVipPrompt('You have used your free daily swipe');
        return;
      }
    }
    
    // 当前是否为最后一页
    final bool isLastPage = _currentIndex >= _displayUsers.length - 1;
    
    if (isLastPage) {
      // 如果是最后一页，显示提示
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No more profiles to show'),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      // 翻到下一页
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300), 
        curve: Curves.easeOut
      );
    }
  }

  // 发送问候消息
  void _handleSayHi() {
    if (_displayUsers.isEmpty) return;
    
    // 获取当前用户数据
    final userData = _displayUsers[_currentIndex];
    
    // 正确获取用户ID - 处理不同数据源可能的字段差异
    final userId = userData['userId'] ?? userData['userid'] ?? userData['id'] ?? '${DateTime.now().millisecondsSinceEpoch}';
    
    // 确保chatId唯一，添加时间戳和随机数以避免冲突
    final random = Random().nextInt(1000);
    final chatId = 'chat_with_${userId}_${DateTime.now().millisecondsSinceEpoch}_$random';
    
    debugPrint('打开聊天，用户ID: $userId, 聊天ID: $chatId');
    
    // 整理要传递的用户数据
    final chatUserData = {
      'id': userId,
      'userId': userId,  // 同时提供两种格式确保兼容性
      'nickname': userData['nickname'] ?? 'Unknown',
      'userphoto': userData['userphoto'] ?? 'assets/images/default_avatar.png',
      'chatId': chatId,  // 使用确保唯一的chatId
      'background_image': userData['usericonbg'] ?? userData['userbg'] ?? '',  // 添加背景图支持
    };
    
    // 跳转到聊天页面
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(userData: chatUserData),
      ),
    );
  }

  // 显示VIP提示对话框
  void _showVipPrompt(String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5D0FE),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: const Icon(
                  Icons.workspace_premium,
                  color: Color(0xFFEE71F9),
                  size: 40,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'You\'ve reached your daily limit of 1 free swipe.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Upgrade to VIP for:',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.swap_horiz, size: 16, color: Color(0xFFEE71F9)),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text('Unlimited Card Sliding', style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Row(
                children: [
                  Icon(Icons.face, size: 16, color: Color(0xFFEE71F9)),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text('Unlimited Avatar Changes', style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Row(
                children: [
                  Icon(Icons.block, size: 16, color: Color(0xFFEE71F9)),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text('Ad-Free Experience', style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
              ),
              child: const Text('Not now'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/vip');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEE71F9),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Upgrade to VIP'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _isLoading 
        ? const Center(child: CircularProgressIndicator(color: Color(0xFFEE71F9))) 
        : _buildMatchContent(),
    );
  }

  Widget _buildMatchContent() {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    
    return Stack(
      children: [
        // 卡片滑动区域，固定位置和尺寸
        Positioned(
          top: statusBarHeight + 52, // 原来是82，减少30
          left: 0,
          right: 0,
          height: 484, // 调整卡片高度为350
          child: _displayUsers.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.sentiment_dissatisfied, size: 80, color: Colors.white.withOpacity(0.7)),
                    const SizedBox(height: 16),
                    Text(
                      '没有更多用户了',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isLoading = true;
                        });
                        _selectRandomUsers();
                        setState(() {
                          _isLoading = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEE71F9),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text('刷新', style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              )
            : GestureDetector(
                onHorizontalDragEnd: (details) async {
                  // 计算有效滑动 - 需要一定的速度才算有效滑动
                  final bool isValidSwipe = details.primaryVelocity != null && 
                                           details.primaryVelocity!.abs() > 300;
                  
                  // 如果不是有效滑动，则不处理
                  if (!isValidSwipe) return;
                  
                  // 检查是否允许滑动
                  if (!_canSwipe()) {
                    // 非VIP用户且已达到限制，显示提示
                    _showVipPrompt('Daily swipe limit reached');
                    return;
                  }
                  
                  // 有效滑动且非VIP用户，增加计数
                  if (!_isVip) {
                    await _incrementSwipeCount();
                  }
                  
                  // 根据滑动方向处理拒绝或喜欢
                  if (details.primaryVelocity! > 0) {
                    // 向右滑动 - 处理喜欢
                    _handleLike();
                  } else {
                    // 向左滑动 - 处理拒绝
                    _handleReject();
                  }
                },
                child: PageView.builder(
                  controller: _pageController,
                  physics: SwipeLimitScrollPhysics(canSwipeCallback: _canSwipe),
                  onPageChanged: (index) async {
                    // 检查是否有权限翻页 (检查是否可以滑动)
                    if (!_canSwipe()) {
                      // 如果无权限滑动，则恢复到上一页
                      _pageController.animateToPage(
                        _currentIndex,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                      _showVipPrompt('Daily swipe limit reached');
                      return;
                    }
                    
                    // 非VIP用户且页面确实改变了，增加滑动计数
                    if (!_isVip && index != _currentIndex) {
                      await _incrementSwipeCount();
                    }
                    
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemCount: _displayUsers.length,
                  itemBuilder: (context, index) {
                    final bool isCurrentItem = index == _currentIndex;
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOutQuint,
                      transform: Matrix4.identity()
                        ..scale(isCurrentItem ? 1.0 : 0.9) // 当前卡片放大，其他卡片缩小
                        ..translate(0.0, isCurrentItem ? 0.0 : 10.0), // 当前卡片上移，其他卡片下移
                      child: _buildUserCard(_displayUsers[index]),
                    );
                  },
                ),
              ),
        ),
        
        // 底部弧形区域 - 修改为凸出的弧形
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: _buildBottomCurveButtons(),
        ),
      ],
    );
  }

  // 构建用户卡片
  Widget _buildUserCard(Map<String, dynamic> userData) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserDetailScreen(userData: userData),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0), // 调整水平边距为10
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 15,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              // 用户照片背景
              Positioned.fill(
                child: Image.asset(
                  userData['userphoto'] ?? 'assets/images/default_avatar.png',
                  fit: BoxFit.cover,
                ),
              ),
              
              // 用户信息底部渐变遮罩
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: 150,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
              
              // 用户名称和介绍
              Positioned(
                bottom: 30,
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userData['nickname'] ?? 'Unknown',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      userData['introduction'] ?? 'No introduction',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      maxLines: 2,
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

  // 底部弧形按钮区域 - 修改为凸出的弧形和按钮
  Widget _buildBottomCurveButtons() {
    return SizedBox(
      height: 180, // 增加高度30，原来是150
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          // 底部凸出的弧形白色背景
          Positioned(
            top: -30, // 向上移动30
            left: 0,
            right: 0,
            height: 210, // 适当增加高度，原来是150加上额外的30
            child: ClipPath(
              clipper: ConvexClipper(),
              child: Container(
                color: const Color(0xFFFFFBF2), // 米白色背景色
              ),
            ),
          ),
          
          // 左边的拒绝按钮
          Positioned(
            top: -80, // 从-90向下移动20像素
            left: (MediaQuery.of(context).size.width - 280) / 2,
            child: GestureDetector(
              onTap: () {
                print('======== X按钮被点击 ========');
                _handleReject();
              },
              behavior: HitTestBehavior.opaque, // 增加点击区域
              child: Container(
                width: 80, // 扩大点击区域更多
                height: 110, // 保持增加后的高度
                color: Colors.transparent, // 添加透明背景以便调试
                alignment: Alignment.bottomCenter, // 调整为底部对齐
                child: Image.asset(
                  'assets/images/cc_scro_1_nor.png',
                  width: 61,
                  height: 61,
                ),
              ),
            ),
          ),
          
          // 中间的Hi按钮，向下移动20像素
          Positioned(
            top: -30, // 从-40向下移动20像素
            child: GestureDetector(
              onTap: () {
                print('======== Hi按钮被点击 ========');
                _handleSayHi();
              },
              behavior: HitTestBehavior.opaque, // 增加点击区域
              child: Container(
                width: 80, // 扩大点击区域更多
                height: 80, // 保持原来的高度
                color: Colors.transparent, // 添加透明背景以便调试
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/cc_scro_2_nor.png',
                  width: 61,
                  height: 61,
                ),
              ),
            ),
          ),
          
          // 右边的喜欢按钮
          Positioned(
            top: -80, // 从-90向下移动20像素
            right: (MediaQuery.of(context).size.width - 280) / 2,
            child: GestureDetector(
              onTap: () {
                print('======== 喜欢按钮被点击 ========');
                _handleLike();
              },
              behavior: HitTestBehavior.opaque, // 增加点击区域
              child: Container(
                width: 80, // 扩大点击区域更多
                height: 110, // 保持增加后的高度
                color: Colors.transparent, // 添加透明背景以便调试
                alignment: Alignment.bottomCenter, // 调整为底部对齐
                child: Image.asset(
                  'assets/images/cc_scro_3_nor.png',
                  width: 61,
                  height: 61,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 自定义凸出弧形裁剪器
class ConvexClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    
    // 起点在左上角
    path.moveTo(0, 0);
    
    // 绘制左侧边线，到达弧形开始位置
    path.lineTo(0, size.height);
    
    // 绘制底边
    path.lineTo(size.width, size.height);
    
    // 绘制右侧边线，到达弧形开始位置
    path.lineTo(size.width, 0);
    
    // 中点向下凹陷
    final arcHeight = 50.0; // 弧度高度
    
    // 绘制顶部弧形，使用二次贝塞尔曲线让顶部中间向下凹陷
    path.quadraticBezierTo(
      size.width / 2, arcHeight, // 控制点，中间向下凹陷
      0, 0 // 结束点回到左上角
    );
    
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
} 