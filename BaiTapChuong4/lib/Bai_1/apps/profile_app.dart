import 'package:flutter/material.dart';
import '../views/profile_page.dart'; // Gọi giao diện từ folder views

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài Tập 1 - Profile',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF1E4C4A), // Màu xanh rêu chủ đạo
      ),
      home: const ProfilePage(), // Trang chính là ProfilePage trong folder views
    );
  }
}