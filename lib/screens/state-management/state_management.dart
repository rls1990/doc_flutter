import 'package:doc_flutter/core/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class StateManagement extends StatelessWidget {
  const StateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "State Management",
      urlBack: "/",
      child: const Column(children: [Text("State Management")]),
    );
  }
}
