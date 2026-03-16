import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Card(
        child: Column(
          children: [
            Expanded(child: Icon(Icons.shopping_bag, size: 50, color: Colors.blue)), // Thay ảnh mạng bằng Icon cho nhanh
            Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(product.price, style: const TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}