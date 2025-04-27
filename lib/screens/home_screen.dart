import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math'; // 导入Random包
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'user_detail_screen.dart';
import 'post_detail_screen.dart';
import 'post_edit_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isMagicSelected = true; // 默认选择魔法方块按钮
  String _selectedCategory = 'Cos'; // 默认选择的分类
  
  // 用于存储从JSON文件加载的数据
  List<Map<String, dynamic>> _cosUsers = [];
  List<Map<String, dynamic>> _gameUsers = [];
  List<Map<String, dynamic>> _animeUsers = [];
  List<Map<String, dynamic>> _currentUsers = []; // 当前分类显示的用户
  
  // 存储随机选择的用户作为虚拟伴侣
  List<Map<String, dynamic>> _magicCompanions = [];
  List<Map<String, dynamic>> _hotCompanions = [];
  
  bool _isLoading = true;
  
  @override
  void initState() {
    super.initState();
    _loadAllData();
    _loadLocalPosts(); // 加载本地存储的帖子
  }
  
  // 加载所有JSON数据
  Future<void> _loadAllData() async {
    try {
      await Future.wait([
        _loadJsonData('assets/data/cc_cosdata.json').then((data) {
          _cosUsers = List<Map<String, dynamic>>.from(data['userdata']);
        }),
        _loadJsonData('assets/data/cc_gamedata.json').then((data) {
          _gameUsers = List<Map<String, dynamic>>.from(data['userdata']);
        }),
        _loadJsonData('assets/data/cc_animdata.json').then((data) {
          _animeUsers = List<Map<String, dynamic>>.from(data['userdata']);
        }),
      ]);
      
      // 初始加载Cos分类数据
      _updateCurrentUsers();
      
      // 从所有用户数据中随机选择6个用户作为虚拟伴侣
      _selectRandomCompanions();
      
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      print('Error loading data: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }
  
  // 从所有用户数据中随机选择用户
  void _selectRandomCompanions() {
    // 合并所有用户数据
    final allUsers = [..._cosUsers, ..._gameUsers, ..._animeUsers];
    
    if (allUsers.isEmpty) return;
    
    // 随机选择用户
    final random = Random();
    
    // 为魔法伴侣选择6个随机用户（第一行3个，第二行3个）
    _magicCompanions = [];
    final magicIndices = <int>{};
    while (magicIndices.length < 6 && magicIndices.length < allUsers.length) {
      magicIndices.add(random.nextInt(allUsers.length));
    }
    
    final magicUsers = magicIndices.toList();
    for (int i = 0; i < magicUsers.length && i < 6; i++) {
      _magicCompanions.add({
        'name': allUsers[magicUsers[i]]['nickname'] ?? 'Unknown',
        'emoji': '🧊',
        'userphoto': allUsers[magicUsers[i]]['userphoto'],
        'userData': allUsers[magicUsers[i]],
      });
    }
    
    // 为热门伴侣选择6个随机用户（不与魔法伴侣重复）
    _hotCompanions = [];
    final hotIndices = <int>{};
    while (hotIndices.length < 6 && hotIndices.length + magicIndices.length < allUsers.length) {
      final newIndex = random.nextInt(allUsers.length);
      if (!magicIndices.contains(newIndex)) {
        hotIndices.add(newIndex);
      }
      
      // 如果所有用户都已经被选择了，就跳出循环
      if (hotIndices.length + magicIndices.length >= allUsers.length) break;
    }
    
    final hotUsers = hotIndices.toList();
    for (int i = 0; i < hotUsers.length && i < 6; i++) {
      _hotCompanions.add({
        'name': allUsers[hotUsers[i]]['nickname'] ?? 'Unknown',
        'emoji': '🔥',
        'userphoto': allUsers[hotUsers[i]]['userphoto'],
        'userData': allUsers[hotUsers[i]],
      });
    }
  }
  
  // 更新当前显示的用户数据基于选中的分类
  void _updateCurrentUsers() {
    setState(() {
      switch (_selectedCategory) {
        case 'Cos':
          _currentUsers = _cosUsers;
          break;
        case 'Games':
          _currentUsers = _gameUsers;
          break;
        case 'Anime':
          _currentUsers = _animeUsers;
          break;
      }
    });
  }
  
  // 读取JSON文件
  Future<Map<String, dynamic>> _loadJsonData(String path) async {
    final String jsonString = await rootBundle.loadString(path);
    return json.decode(jsonString);
  }
  
  // 加载本地保存的帖子
  Future<void> _loadLocalPosts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // 加载各个分类的帖子
      final cosPostsJson = prefs.getString('cos_posts') ?? '[]';
      final gamePostsJson = prefs.getString('game_posts') ?? '[]';
      final animePostsJson = prefs.getString('anime_posts') ?? '[]';
      
      // 解析JSON数据
      final cosPosts = List<Map<String, dynamic>>.from(
        json.decode(cosPostsJson) as List
      );
      final gamePosts = List<Map<String, dynamic>>.from(
        json.decode(gamePostsJson) as List
      );
      final animePosts = List<Map<String, dynamic>>.from(
        json.decode(animePostsJson) as List
      );
      
      // 将本地保存的帖子添加到对应的数据列表
      setState(() {
        if (cosPosts.isNotEmpty) {
          _cosUsers.insertAll(0, cosPosts);
        }
        if (gamePosts.isNotEmpty) {
          _gameUsers.insertAll(0, gamePosts);
        }
        if (animePosts.isNotEmpty) {
          _animeUsers.insertAll(0, animePosts);
        }
        
        // 更新当前显示的用户数据
        _updateCurrentUsers();
      });
      
      debugPrint('Loaded local posts: Cos(${cosPosts.length}), Games(${gamePosts.length}), Anime(${animePosts.length})');
    } catch (e) {
      debugPrint('Error loading local posts: $e');
    }
  }
  
  // 保存本地帖子数据
  Future<void> _saveLocalPosts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // 筛选出用户创建的帖子（通过检查帖子ID是否包含"local_"前缀）
      final localCosPosts = _cosUsers.where((user) {
        if (user['post'] == null || (user['post'] as List).isEmpty) return false;
        final post = (user['post'] as List)[0];
        return post['id'].toString().startsWith('local_');
      }).toList();
      
      final localGamePosts = _gameUsers.where((user) {
        if (user['post'] == null || (user['post'] as List).isEmpty) return false;
        final post = (user['post'] as List)[0];
        return post['id'].toString().startsWith('local_');
      }).toList();
      
      final localAnimePosts = _animeUsers.where((user) {
        if (user['post'] == null || (user['post'] as List).isEmpty) return false;
        final post = (user['post'] as List)[0];
        return post['id'].toString().startsWith('local_');
      }).toList();
      
      // 保存到SharedPreferences
      await prefs.setString('cos_posts', json.encode(localCosPosts));
      await prefs.setString('game_posts', json.encode(localGamePosts));
      await prefs.setString('anime_posts', json.encode(localAnimePosts));
      
      debugPrint('Saved local posts: Cos(${localCosPosts.length}), Games(${localGamePosts.length}), Anime(${localAnimePosts.length})');
    } catch (e) {
      debugPrint('Error saving local posts: $e');
    }
  }
  
  // 添加新帖子到对应分类
  void _addNewPost(Map<String, dynamic> postData, String category) {
    // 确保帖子ID有本地标识前缀
    if (!postData['id'].toString().startsWith('local_')) {
      postData['id'] = 'local_${postData['id']}';
    }
    
    setState(() {
      // 创建包含单个帖子的用户数据结构
      Map<String, dynamic> userData = {
        'id': postData['author']['id'],
        'nickname': postData['author']['nickname'],
        'userphoto': postData['author']['userphoto'],
        'post': [postData], // 放入post列表中
      };
      
      // 根据分类添加到对应列表
      switch (category) {
        case 'Cos':
          _cosUsers.insert(0, userData); // 添加到列表开头
          if (_selectedCategory == 'Cos') {
            _updateCurrentUsers(); // 如果当前分类是Cos，更新显示
          }
          break;
        case 'Games':
          _gameUsers.insert(0, userData);
          if (_selectedCategory == 'Games') {
            _updateCurrentUsers();
          }
          break;
        case 'Anime':
          _animeUsers.insert(0, userData);
          if (_selectedCategory == 'Anime') {
            _updateCurrentUsers();
          }
          break;
      }
      
      // 保存本地帖子
      _saveLocalPosts();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      extendBody: true, // 允许内容延伸到底部，避免底部TabBar被覆盖
      body: Stack(
        children: [
          // 背景图片
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cc_home_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // 滚动内容区域
          _isLoading 
            ? const Center(child: CircularProgressIndicator(color: Color(0xFFEE71F9)))
            : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 顶部的Explore图片
                  Padding(
                    padding: const EdgeInsets.only(top: 58.0, left: 20.0),
                    child: Image.asset(
                      'assets/images/cc_home_Explore.png',
                      width: 93.0,
                      height: 19.0,
                    ),
                  ),
                  
                  // Virtual Companions区域
                  Padding(
                    padding: const EdgeInsets.only(top: 26.0, left: 20.0, right: 20.0),
                    child: Stack(
                      children: [
                        // 黄色背景图
                        Image.asset(
                          'assets/images/cc_home_topbg.png',
                          height: 242.0,
                          width: screenWidth - 40,
                          fit: BoxFit.fill,
                        ),
                        
                        // 左侧按钮组
                        Positioned(
                          top: 77.0, // 调整为精确的77pt
                          left: 16.0,
                          child: Column(
                            children: [
                              // 魔法方块按钮
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isMagicSelected = true;
                                  });
                                },
                                child: Image.asset(
                                  _isMagicSelected
                                      ? 'assets/images/cc_home_vc_mh_nor.png'
                                      : 'assets/images/cc_home_vc_mh_pre.png',
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              // 火焰按钮
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isMagicSelected = false;
                                  });
                                },
                                child: Image.asset(
                                  _isMagicSelected
                                      ? 'assets/images/cc_home_vc_hot_pre.png'
                                      : 'assets/images/cc_home_vc_hot_nor.png',
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        // 右侧虚拟伴侣列表
                        Positioned(
                          top: 55.0, // 调整为精确的55pt
                          left: 80.0,
                          right: 16.0,
                          child: Column(
                            children: [
                              // 第一行虚拟伴侣 - 显示第1-3个
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  _buildCompanionItem(0, _isMagicSelected ? _magicCompanions : _hotCompanions),
                                  _buildCompanionItem(1, _isMagicSelected ? _magicCompanions : _hotCompanions),
                                  _buildCompanionItem(2, _isMagicSelected ? _magicCompanions : _hotCompanions),
                                ],
                              ),
                              const SizedBox(height: 16.0),
                              // 第二行虚拟伴侣 - 显示第4-6个
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  _buildCompanionItem(3, _isMagicSelected ? _magicCompanions : _hotCompanions),
                                  _buildCompanionItem(4, _isMagicSelected ? _magicCompanions : _hotCompanions),
                                  _buildCompanionItem(5, _isMagicSelected ? _magicCompanions : _hotCompanions),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 20.0),
                  
                  // 分类标签区域
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildCategoryChip('Cos', _selectedCategory == 'Cos'),
                          const SizedBox(width: 8),
                          _buildCategoryChip('Games', _selectedCategory == 'Games'),
                          const SizedBox(width: 8),
                          _buildCategoryChip('Anime', _selectedCategory == 'Anime'),
                          const SizedBox(width: 16),
                          _buildPostButton(),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // 用户帖子内容
                  _buildUserPosts(),
                  
                  // 为底部TabBar留出空间
                  const SizedBox(height: 120),
                ],
              ),
            ),
        ],
      ),
    );
  }
  
  // 构建用户帖子内容
  Widget _buildUserPosts() {
    // 如果没有用户数据，显示提示信息
    if (_currentUsers.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            '没有可显示的内容',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    // 创建用户列表组件
    List<Widget> userRows = [];
    
    // 每两个用户创建一行
    for (int i = 0; i < _currentUsers.length; i += 2) {
      // 创建一行的子组件
      List<Widget> rowChildren = [];
      
      // 添加第一个用户
      rowChildren.add(Expanded(
        child: _buildUserPostCard(_currentUsers[i]),
      ));
      
      // 添加间隔
      rowChildren.add(const SizedBox(width: 10));
      
      // 如果有第二个用户，添加第二个用户
      if (i + 1 < _currentUsers.length) {
        rowChildren.add(Expanded(
          child: _buildUserPostCard(_currentUsers[i + 1]),
        ));
      } else {
        // 如果没有第二个用户，添加空白占位
        rowChildren.add(Expanded(
          child: Container(),
        ));
      }
      
      // 将这一行添加到行列表中
      userRows.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(children: rowChildren),
        ),
      );
    }
    
    // 返回所有用户行
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: userRows,
      ),
    );
  }
  
  // 构建用户帖子卡片
  Widget _buildUserPostCard(Map<String, dynamic> user) {
    // 获取用户的第一个帖子
    final post = user['post'] != null && (user['post'] as List).isNotEmpty
      ? (user['post'] as List)[0]
      : null;
      
    if (post == null) {
      return Container(); // 如果没有帖子，返回空容器
    }
    
    // 创建完整的帖子数据，包含作者信息
    final Map<String, dynamic> fullPostData = Map<String, dynamic>.from(post);
    // 添加作者信息到帖子数据中
    fullPostData['author'] = {
      'nickname': user['nickname'],
      'userphoto': user['userphoto'],
      'id': user['id'] ?? '',
      'postTime': '2小时前', // 这里可以根据实际情况设置
    };
    
    return GestureDetector(
      onTap: () {
        // 点击卡片时跳转到帖子详情页，而不是用户详情页
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
        clipBehavior: Clip.antiAlias, // 确保内容不超出圆角
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 帖子图片
            AspectRatio(
              aspectRatio: 1, // 正方形图片
              child: Image.asset(
                post['imag'],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[800],
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        color: Colors.white60,
                        size: 40,
                      ),
                    ),
                  );
                },
              ),
            ),
            
            // 帖子标题和作者信息
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post['title'] ?? 'No Title',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      // 用户头像
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage(user['userphoto']),
                      ),
                      const SizedBox(width: 4),
                      // 用户昵称
                      Expanded(
                        child: Text(
                          user['nickname'] ?? 'Unknown',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 10,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
  }
  
  Widget _buildCompanionItem(int index, List<Map<String, dynamic>> companions) {
    if (index >= companions.length) {
      return const SizedBox.shrink();
    }
    
    final companion = companions[index];
    
    return GestureDetector(
      onTap: () {
        // 如果有用户数据，点击时跳转到用户详情页
        if (companion['userData'] != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserDetailScreen(userData: companion['userData']),
            ),
          );
        }
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // 用户头像
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              borderRadius: BorderRadius.circular(30.0),
              image: companion['userphoto'] != null
                ? DecorationImage(
                    image: AssetImage(companion['userphoto']),
                    fit: BoxFit.cover,
                  )
                : null,
            ),
            alignment: Alignment.center,
            child: companion['userphoto'] == null
              ? Text(
                  companion['emoji'] ?? '👤',
                  style: const TextStyle(fontSize: 32.0),
                )
              : null,
          ),
          
          // 名字标签
          Container(
            width: 60.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              companion['name'] ?? 'Unknown',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildCategoryChip(String label, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategory = label;
          _updateCurrentUsers();
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          gradient: isSelected 
              ? const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFEFFA8), // 顶部颜色 #FEFFA8
                    Color(0xFFFC5CFF), // 底部颜色 #FC5CFF
                  ],
                )
              : null,
          color: isSelected ? null : const Color(0xFFFC5CFF), // 未选中时使用 #FC5CFF
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
  
  Widget _buildPostButton() {
    return ElevatedButton(
      onPressed: () {
        // 跳转到发帖页面
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostEditScreen(
              onPostCreated: _addNewPost,
            ),
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
      child: const Text(
        '+POST',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  
  Widget _buildContentCard(Map<String, dynamic> cardData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias, // 确保内容不超出圆角
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 图片区域
          AspectRatio(
            aspectRatio: 1, // 正方形图片
            child: Container(
              color: Colors.grey[800],
              child: Center(
                child: Icon(
                  Icons.image,
                  color: Colors.grey[600],
                  size: 40,
                ),
              ),
            ),
          ),
          
          // 标题和作者信息
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardData['title'] ?? 'No Title',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    // 作者头像
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.grey[700],
                      child: const Icon(
                        Icons.person,
                        size: 12,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(width: 4),
                    // 作者名称
                    Expanded(
                      child: Text(
                        cardData['author'] ?? 'Unknown',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 10,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 