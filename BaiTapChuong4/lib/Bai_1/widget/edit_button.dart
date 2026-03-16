import 'package:flutter/material.dart';
import '../utils/app_constants.dart';

class EditButton extends StatelessWidget {
  const EditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppConstants.accentColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      ),
      child: const Text("Edit Profile", style: TextStyle(color: Colors.white)),
    );
  }
}