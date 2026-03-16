import 'package:flutter/material.dart';
import '../models/food_item.dart';

class FoodCard extends StatelessWidget {
  final FoodItem item;
  const FoodCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            // Thay thế Image.network bằng một Container có màu để test layout trước
            Container(
              width: 60,
              height: 60,
              color: Colors.grey[300],
              child: const Icon(Icons.fastfood, color: Colors.orange),
            ),
            const SizedBox(width: 15),
            // Sử dụng Expanded để Column chiếm không gian còn lại
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name, 
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    overflow: TextOverflow.ellipsis, // Nếu chữ quá dài sẽ hiện dấu ...
                  ),
                  Text(item.description),
                  Text(
                    item.price, 
                    style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}