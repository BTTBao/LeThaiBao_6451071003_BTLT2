import 'package:flutter/material.dart';
import '../models/news_model.dart';

class NewsCard extends StatelessWidget {
  final NewsModel news;
  const NewsCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 150, color: Colors.grey[300], child: const Center(child: Icon(Icons.image))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(news.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(news.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}