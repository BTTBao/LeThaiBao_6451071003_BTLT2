import 'package:flutter/material.dart';
import '../views/food_list_page.dart'; // Import trang giao diện vào đây

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Tắt cái banner "Debug" ở góc màn hình
      title: 'Danh Sách Món Ăn',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Màu chủ đạo của app
        useMaterial3: true,
      ),
      home: FoodListPage(), // Đặt trang chủ là file danh sách món ăn
    );
  }
}