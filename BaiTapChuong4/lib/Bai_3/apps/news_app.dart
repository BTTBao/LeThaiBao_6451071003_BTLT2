import 'package:flutter/material.dart';
import '../views/news_page.dart'; // Trỏ đến trang giao diện Tin tức

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Feed App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: NewsPage(), // Đặt trang chủ là NewsPage
    );
  }
}