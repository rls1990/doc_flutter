import 'package:doc_flutter/core/layouts/main_layout.dart';
import 'package:doc_flutter/data/repositories/topic_repository.dart';
import 'package:doc_flutter/widgets/topic_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topics = TopicRepository.getTopicsMain(); // Obtiene los datos
    return MainLayout(
      child: ListView.builder(
        itemCount: topics.length,
        itemBuilder: (context, index) {
          final topic = topics[index];
          return TopicCard(
            title: topic.title,
            subtitle: topic.subtitle,
            progress: topic.progress,
            topics: topic.topics,
            color: topic.color,
            url: topic.url,
          );
        },
      ),
    );
  }
}
