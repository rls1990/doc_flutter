import 'package:flutter/material.dart';

class Topic {
  final String title;
  final String subtitle;
  final double progress;
  final int topics;
  final Color color;
  final String url;

  const Topic({
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.topics,
    required this.color,
    required this.url,
  });
}
