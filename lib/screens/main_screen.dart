import 'package:flutter/material.dart';
import 'dart:io'; // Import for Platform check
import 'user_profile_screen.dart';
import 'home_screen.dart';
import 'user_detail_screen.dart'; // 导入UserDetailScreen
import 'message_list_screen.dart'; // 导入MessageListScreen
import 'match_screen.dart'; // 导入MatchScreen

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  
  // 创建页面列表
  late final List<Widget> _pages;
  
  @override
  void initState() {
    super.initState();
    // 初始化页面列表
    _pages = [
      const HomeScreen(),
      const MatchScreen(), // 使用新的MatchScreen
      const MessageListScreen(), // 消息列表页面
      const UserProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          _buildBody(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildBottomBar(),
          ),
        ],
      ),
    );
  }

  // 创建占位页面，因为UserDetailScreen需要用户数据
  Widget _buildPlaceholderPage() {
    // 创建一个示例用户数据作为占位
    final Map<String, dynamic> placeholderUserData = {
      'nickname': 'Example User',
      'userphoto': 'assets/images/placeholder.png',
      'userbg': 'assets/images/placeholder.png',
      'introduction': 'This is a placeholder user for demonstration purposes.',
      'post': [
        {
          'title': 'Example Post',
          'content': 'This is an example post content. Click on real users from the home page to see actual content.',
          'imag': 'assets/images/placeholder.png'
        }
      ]
    };
    
    return UserDetailScreen(userData: placeholderUserData);
  }

  Widget _buildBody() {
    // 获取底部安全区域高度
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    
    return Stack(
      children: [
        // 当前页面内容
        _pages[_currentIndex],
      ],
    );
  }

  Widget _buildBottomBar() {
    // 获取底部安全区域高度
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
      child: Container(
        width: screenWidth - 32,
        height: 60,
        margin: const EdgeInsets.only(bottom: 50.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFF58FF), // 粉色背景
          borderRadius: BorderRadius.circular(30), // 圆角效果
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildCustomTabItem('assets/images/tab/cc_1_nor.png', 'assets/images/tab/cc_1_pre.png', 0),
            _buildCustomTabItem('assets/images/tab/cc_2_nor.png', 'assets/images/tab/cc_2_pre.png', 1),
            _buildCustomTabItem('assets/images/tab/cc_3_nor.png', 'assets/images/tab/cc_3_pre.png', 2),
            _buildCustomTabItem('assets/images/tab/cc_4_nor.png', 'assets/images/tab/cc_4_pre.png', 3),
          ],
        ),
      ),
    );
  }
  
  Widget _buildCustomTabItem(String normalIcon, String selectedIcon, int index) {
    final bool isSelected = _currentIndex == index;
    
    return InkWell(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: SizedBox(
        width: 60,
        height: 60,
        child: Center(
          child: Image.asset(
            isSelected ? normalIcon : selectedIcon,
            width: 28,
            height: 28,
          ),
        ),
      ),
    );
  }
  
  // 旧的tab实现，保留作参考
  Widget _buildTabItem(IconData icon, String label, int index) {
    final bool isSelected = _currentIndex == index;
    
    return InkWell(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: SizedBox(
        width: 60,
        height: 60,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isSelected ? const Color(0xFFEE71F9) : Colors.grey,
                size: 24,
              ),
              Text(
                label,
                style: TextStyle(
                  color: isSelected ? const Color(0xFFEE71F9) : Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 简单的消息页面
class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Messages'),
        backgroundColor: const Color(0xFFEE71F9),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFF090B16),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 创建一个示例用户数据
            final Map<String, dynamic> sampleUserData = {
              'nickname': 'Sample User',
              'userphoto': 'assets/images/placeholder.png',
              'userbg': 'assets/images/placeholder.png',
              'introduction': 'This is a sample user for demonstration.',
              'post': [
                {
                  'title': 'Sample Post',
                  'content': 'This is a sample post content.',
                  'imag': 'assets/images/placeholder.png'
                }
              ]
            };
            
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserDetailScreen(userData: sampleUserData),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFEE71F9),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          child: const Text('Open User Details'),
        ),
      ),
    );
  }
}

// 简单的个人资料页面
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFFEE71F9),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFF090B16),
      body: const Center(
        child: Text(
          'Profile Page', 
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
} 