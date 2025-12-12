import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double progress;
  final int topics;
  final Color color;

  const TopicCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.topics,
    this.color = Colors.blueAccent,
    this.progress = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          // ignore: deprecated_member_use
          backgroundColor: color.withOpacity(0.2),
          child: Icon(Icons.book, color: color),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle),
            const SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey[200],
                    color: color,
                  ),
                ),
                const SizedBox(width: 10),
                Text('$topics temas'),
              ],
            ),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Navegar a subtemas
        },
      ),
    );
  }
}
