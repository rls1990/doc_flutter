import 'package:doc_flutter/core/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class BasicFlutter extends StatelessWidget {
  const BasicFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(child: Column(children: [Text("Basic flutter")]));
  }
}
