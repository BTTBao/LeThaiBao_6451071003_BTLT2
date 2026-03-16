import 'package:flutter/material.dart';
import '../models/news_model.dart';
import '../widget/news_card.dart';
import '../utils/app_constants.dart';

class NewsPage extends StatelessWidget {
  final List<NewsModel> newsList = [
    NewsModel(title: "Article 1: Flutter is awesome!", description: "Learn about cross-platform...", imageUrl: ""),
    NewsModel(title: "Article 2: Local Coffee Shop Opens", description: "The cozy new cafe...", imageUrl: ""),
    NewsModel(title: "Article 3: New Tech Gadgets", description: "Discover the newest...", imageUrl: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("News")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...newsList.map((news) => NewsCard(news: news)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(AppConstants.mssv, style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}