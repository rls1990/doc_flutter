import 'package:doc_flutter/core/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class AdvancedDart extends StatelessWidget {
  const AdvancedDart({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Advanced Dart",
      urlBack: "/",
      child: Column(children: [Text("Advanced Dart")]),
    );
  }
}
