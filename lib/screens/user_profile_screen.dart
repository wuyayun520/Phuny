import 'package:flutter/material.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  String _userName = 'User Name';
  String? _userAvatarPath;
  final TextEditingController _nameController = TextEditingController(text: 'User Name');
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        _userName = prefs.getString('user_name') ?? 'User Name';
        _userAvatarPath = prefs.getString('user_avatar_path');
        _nameController.text = _userName;
      });
    } catch (e) {
      debugPrint('Error loading user data: $e');
    }
  }

  Future<void> _saveUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('user_name', _userName);
      if (_userAvatarPath != null) {
        await prefs.setString('user_avatar_path', _userAvatarPath!);
      }
    } catch (e) {
      debugPrint('Error saving user data: $e');
    }
  }

  Future<void> _pickImage() async {
    try {
      // 显示选择来源的对话框
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: const Text(
              'Select Image Source',
              style: TextStyle(color: Color(0xFF4A4A4A), fontWeight: FontWeight.bold),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: const ListTile(
                      leading: Icon(Icons.photo_library, color: Color(0xFFEE71F9)),
                      title: Text('Photo Library'),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      _getImage(ImageSource.gallery);
                    },
                  ),
                  const Divider(),
                  GestureDetector(
                    child: const ListTile(
                      leading: Icon(Icons.camera_alt, color: Color(0xFFEE71F9)),
                      title: Text('Camera'),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      _getImage(ImageSource.camera);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      );
    } catch (e) {
      debugPrint('Error showing image source dialog: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error showing dialog: $e')),
      );
    }
  }

  Future<void> _getImage(ImageSource source) async {
    try {
      debugPrint('Attempting to pick image from $source');
      final XFile? image = await _picker.pickImage(
        source: source,
        imageQuality: 85, // 设置图片质量
        maxWidth: 800,    // 限制最大宽度
      );
      
      if (image == null) {
        debugPrint('No image selected');
        return;
      }
      
      debugPrint('Image selected: ${image.path}');

      // 获取应用文档目录（永久存储）
      final Directory appDir = await getApplicationDocumentsDirectory();
      final String appDirPath = appDir.path;
      debugPrint('App documents directory: $appDirPath');
      
      // 创建用于存储用户数据的子目录
      final Directory userDataDir = Directory('$appDirPath/user_data');
      if (!await userDataDir.exists()) {
        debugPrint('Creating user_data directory');
        await userDataDir.create(recursive: true);
      }
      
      // 创建唯一文件名
      final String fileName = 'user_avatar_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final String localPath = '${userDataDir.path}/$fileName';
      debugPrint('Saving image to: $localPath');
      
      try {
        // 复制文件到应用永久存储目录
        final File localImage = File(localPath);
        final imageBytes = await File(image.path).readAsBytes();
        debugPrint('Read ${imageBytes.length} bytes from source image');
        
        await localImage.writeAsBytes(imageBytes);
        debugPrint('Image saved successfully');
        
        // 如果之前有头像，删除旧头像文件以节省空间
        if (_userAvatarPath != null && File(_userAvatarPath!).existsSync()) {
          await File(_userAvatarPath!).delete();
          debugPrint('Deleted old avatar');
        }
        
        setState(() {
          _userAvatarPath = localPath;
        });
        
        await _saveUserData();
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Avatar saved successfully'),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Color(0xFFEE71F9),
          ),
        );
      } catch (e) {
        debugPrint('Error saving image file: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error saving image: $e'),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.redAccent,
          ),
        );
      }
    } catch (e) {
      debugPrint('Error picking image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to select image: $e'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.redAccent,
        ),
      );
    }
  }

  void _showEditNameDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text(
            'Edit Name',
            style: TextStyle(color: Color(0xFF4A4A4A), fontWeight: FontWeight.bold),
          ),
          content: TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: 'Enter your name',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFEE71F9)),
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
              ),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _userName = _nameController.text;
                });
                _saveUserData();
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                foregroundColor: Color(0xFFEE71F9),
              ),
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Color(0xFF4A4A4A),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // 顶部个人资料区域 - 使用渐变背景
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFF5D0FE),
                    Color(0xFFEE71F9),
                  ],
                ),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFEE71F9).withOpacity(0.3),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // 用户头像
                  GestureDetector(
                    onTap: _pickImage,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: _userAvatarPath != null && File(_userAvatarPath!).existsSync()
                          ? CircleAvatar(
                              radius: 65,
                              backgroundColor: Colors.white,
                              backgroundImage: FileImage(File(_userAvatarPath!)),
                            )
                          : const CircleAvatar(
                              radius: 65,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                size: 75,
                                color: Color(0xFFEE71F9),
                              ),
                            ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Color(0xFFEE71F9),
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // 用户名称
                  GestureDetector(
                    onTap: _showEditNameDialog,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            _userName,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // 设置选项区块 - 使用卡片风格
            Container(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 16),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4A4A4A),
                      ),
                    ),
                  ),
                  
                  // 设置选项卡片
                  Card(
                    elevation: 4,
                    shadowColor: Colors.grey.withOpacity(0.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        _buildSettingItem(
                          icon: Icons.description_outlined,
                          title: 'Terms of Service',
                          subtitle: 'Read our terms and conditions',
                          onTap: () {
                            Navigator.pushNamed(context, '/terms');
                          },
                          showDivider: true,
                        ),
                        
                        _buildSettingItem(
                          icon: Icons.privacy_tip_outlined,
                          title: 'Privacy Policy',
                          subtitle: 'How we handle your data',
                          onTap: () {
                            Navigator.pushNamed(context, '/privacy');
                          },
                          showDivider: true,
                        ),
                        
                        _buildSettingItem(
                          icon: Icons.info_outline,
                          title: 'About',
                          subtitle: 'Learn more about Phuny',
                          onTap: () {
                            Navigator.pushNamed(context, '/about');
                          },
                          showDivider: false,
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // 退出登录按钮
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.logout),
                      label: const Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        // 跳转到登录页面
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.redAccent,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 2,
                        shadowColor: Colors.redAccent.withOpacity(0.4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // 为TabBar留出足够空间，确保内容不被遮挡
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    required bool showDivider,
  }) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFF5D0FE).withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: const Color(0xFFEE71F9),
              size: 24,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 13,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 16,
          ),
          onTap: onTap,
        ),
        if (showDivider)
          const Divider(
            height: 1,
            indent: 70,
            endIndent: 20,
          ),
      ],
    );
  }

  void _showAboutDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text(
            'About Phuny',
            style: TextStyle(color: Color(0xFF4A4A4A), fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5D0FE),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFEE71F9).withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.favorite,
                  color: Color(0xFFEE71F9),
                  size: 35,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Version: 1.0.0',
                style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF4A4A4A)),
              ),
              const SizedBox(height: 12),
              const Text(
                'Phuny is a platform for virtual companions and social interactions.',
                style: TextStyle(color: Color(0xFF4A4A4A), height: 1.4),
              ),
              const SizedBox(height: 16),
              const Text(
                '© 2025 Phuny. All rights reserved.',
                style: TextStyle(fontSize: 12, color: Colors.grey),
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
                foregroundColor: const Color(0xFFEE71F9),
              ),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
} 