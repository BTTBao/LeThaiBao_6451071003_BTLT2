import 'package:flutter/material.dart';

// --- IMPORT CÁC BÀI TẬP ---
import 'Bai_1/apps/profile_app.dart';
import 'Bai_2/apps/food_app.dart';
import 'Bai_3/apps/news_app.dart'; 
import 'Bai_4/apps/grid_app.dart';
import 'Bai_5/apps/expansion_app.dart'; // 1. Import bài 5 vào đây

void main() {
  // --- CHỌN BÀI MUỐN CHẠY ---
  // Bạn chỉ cần gỡ // ở dòng runApp tương ứng là xong!

  // runApp(const ProfileApp()); // Chạy bài 1R
  // runApp(const FoodApp());    // Chạy bài 2
  // runApp(const NewsApp());    // Chạy bài 3
  // runApp(const GridApp());    // Chạy bài 4
  
  runApp(const ExpansionApp());  // 2. Đang chạy bài 5
}