import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Phuny'),
        backgroundColor: const Color(0xFFEE71F9),
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFEE71F9).withOpacity(0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/images/cc_login_icon.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                
                const SizedBox(height: 32),
                
                // App名称
                const Text(
                  'Phuny',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A4A4A),
                  ),
                ),
                
                const SizedBox(height: 8),
                
                // 版本号
                const Text(
                  'Version 1.0.0',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                
                const SizedBox(height: 32),
                
                // 分割线
                const Divider(),
                
                const SizedBox(height: 24),
                
                // App描述
                const Text(
                  'Phuny is a platform for role-play enthusiasts, gamers, anime lovers, and creative souls to connect and share their passion.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF4A4A4A),
                    height: 1.5,
                  ),
                ),
                
                const SizedBox(height: 24),
                
                // 版权信息
                const Text(
                  '© 2025 Phuny. All rights reserved.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                
                const SizedBox(height: 40),
                
                // 联系信息
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5D0FE).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      _buildContactItem(Icons.email_outlined, 'Contact: support@phuny.com'),
                      const SizedBox(height: 12),
                      _buildContactItem(Icons.language_outlined, 'Website: www.phuny.com'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget _buildContactItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFFEE71F9),
          size: 20,
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF4A4A4A),
          ),
        ),
      ],
    );
  }
} 