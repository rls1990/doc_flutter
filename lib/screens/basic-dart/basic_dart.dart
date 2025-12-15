import 'package:doc_flutter/core/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class BasicDart extends StatelessWidget {
  const BasicDart({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Basic Dart",
      urlBack: "/",
      child: Column(children: [Text("Basic Dart 1")]),
    );
  }
}
