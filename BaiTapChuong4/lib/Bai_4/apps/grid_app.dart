import 'package:flutter/material.dart';
import '../views/grid_page.dart'; // Import trang giao diện Grid

class GridApp extends StatelessWidget {
  const GridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cửa Hàng Thế Thao',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: GridPage(), // Trang chính là GridPage
    );
  }
}