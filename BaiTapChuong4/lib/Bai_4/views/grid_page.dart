import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widget/product_tile.dart';
import '../utils/app_constants.dart';

class GridPage extends StatelessWidget {
  final List<Product> products = List.generate(6, (index) => 
    Product(name: "Sản phẩm ${index + 1}", price: "950,000 đ", imageUrl: "")
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cửa Hàng Thế Thao")),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // 2 cột
              children: products.map((p) => ProductTile(product: p)).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(AppConstants.mssv, style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}