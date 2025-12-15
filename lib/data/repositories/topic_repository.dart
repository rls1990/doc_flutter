import 'package:flutter/material.dart';
import '../models/topic_model.dart';

class TopicRepository {
  static List<Topic> getTopicsMain() {
    return [
      Topic(
        title: 'Dart Básico',
        subtitle: 'Programación asíncrona',
        progress: 0.4,
        topics: 8,
        color: Colors.indigoAccent,
        url: "/basic-dart",
      ),
      Topic(
        title: 'Dart Avanzado',
        subtitle: 'Programación asíncrona',
        progress: 0.4,
        topics: 8,
        color: Colors.purple,
        url: "/advanced-dart",
      ),
      Topic(
        title: 'Flutter Básico',
        subtitle: 'Widgets fundamentales',
        progress: 0.8,
        topics: 12,
        color: Colors.blue,
        url: "/basic-flutter",
      ),

      Topic(
        title: 'State Management',
        subtitle: 'Provider, Bloc, Riverpod',
        progress: 0.2,
        topics: 10,
        color: Colors.green,
        url: "/state-management",
      ),
      Topic(
        title: 'API Integration',
        subtitle: 'REST y GraphQL',
        progress: 0.6,
        topics: 6,
        color: Colors.orange,
        url: "/api-integration",
      ),
      Topic(
        title: 'Animaciones',
        subtitle: 'Implícitas y explícitas',
        progress: 0.3,
        topics: 7,
        color: Colors.pink,
        url: "/animations",
      ),
      Topic(
        title: 'Testing',
        subtitle: 'Unit y widget tests',
        progress: 0.1,
        topics: 5,
        color: Colors.teal,
        url: "/testing",
      ),
    ];
  }
}
