import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/terms_screen.dart';
import 'screens/privacy_screen.dart';
import 'screens/about_screen.dart';
import 'screens/main_screen.dart';
import 'dart:developer' as developer;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _checkAssets();
  }

  Future<void> _checkAssets() async {
    try {
      // Check if assets exist
      final manifestContent = await rootBundle.loadString('AssetManifest.json');
      developer.log('Asset Manifest: $manifestContent');
      
      // Try to load images directly
      try {
        final bgBytes = await rootBundle.load('assets/images/cc_login_bg.png');
        developer.log('Background image size: ${bgBytes.lengthInBytes}');
      } catch (e) {
        developer.log('Error loading background image: $e');
      }
      
      try {
        final iconBytes = await rootBundle.load('assets/images/cc_login_icon.png');
        developer.log('Icon image size: ${iconBytes.lengthInBytes}');
      } catch (e) {
        developer.log('Error loading icon image: $e');
      }
    } catch (e) {
      developer.log('Error checking assets: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phuny',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFEE71F9)),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
      routes: {
        '/main': (context) => const MainScreen(),
        '/home': (context) => const HomeScreen(),
        '/terms': (context) => const TermsScreen(),
        '/privacy': (context) => const PrivacyScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}
