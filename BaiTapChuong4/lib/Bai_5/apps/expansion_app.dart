import 'package:flutter/material.dart';
import '../views/expansion_page.dart'; // Trỏ đến trang ExpansionPage

class ExpansionApp extends StatelessWidget {
  const ExpansionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expansion Menu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: ExpansionPage(), // Trang chính là trang menu mở rộng
    );
  }
}