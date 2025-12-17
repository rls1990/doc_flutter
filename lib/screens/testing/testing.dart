import 'package:doc_flutter/core/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Testing",
      urlBack: "/",
      child: Column(children: [Text("Testing")]),
    );
  }
}
