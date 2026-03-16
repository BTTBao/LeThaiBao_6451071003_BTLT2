// lib/Bai_2/views/food_list_page.dart
import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../widget/food_card.dart';
import '../utils/app_constants.dart'; // 1. Import utils vào đây

class FoodListPage extends StatelessWidget {
  final List<FoodItem> foods = [
    FoodItem(name: "Phở Bò", description: "Phở Bò Đặc Biệt", price: "65,000 VND", imageUrl: "https://via.placeholder.com/60"),
    FoodItem(name: "Bún Chả", description: "Bún Chả Hà Nội", price: "55,000 VND", imageUrl: "https://via.placeholder.com/60"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DANH SÁCH MÓN ĂN")),
      body: Column( // 2. Đổi Center thành Column để có thể chứa cả List và dòng MSSV
        children: [
          Expanded( // 3. Dùng Expanded để ListView chiếm hết không gian còn lại
            child: ListView.builder(
              itemCount: foods.length,
              itemBuilder: (context, index) => FoodCard(item: foods[index]),
            ),
          ),
          // 4. Dòng MSSV xuất hiện ở cuối
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "${AppConstants.name} - ${AppConstants.mssv}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}