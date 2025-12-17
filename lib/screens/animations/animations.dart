import 'package:doc_flutter/core/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class AnimationsFlutter extends StatelessWidget {
  const AnimationsFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Animations",
      urlBack: "/",
      child: Column(children: [Text("Animations")]),
    );
  }
}
