import 'package:flutter/material.dart';
import '../models/user.dart';
import '../utils/app_constants.dart';
import '../widget/edit_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = User(
      name: "Nguyen Lan Huong",
      email: "lanhuong.nguyen@example.com",
      avatarUrl: "https://i.pravatar.cc/300", 
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile", style: TextStyle(color: Colors.white)),
        backgroundColor: AppConstants.primaryColor,
        centerTitle: true,
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: const [Icon(Icons.person, color: Colors.white), SizedBox(width: 10)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Căn giữa nội dung
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(user.avatarUrl),
            ),
            const SizedBox(height: 20),
            Text(user.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(user.email, style: const TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 10),
            // Hiển thị MSSV theo yêu cầu giảng viên
            Text("MSSV: ${AppConstants.mssv}", 
                 style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue)),
            const SizedBox(height: 20),
            const EditButton(),
          ],
        ),
      ),
    );
  }
}