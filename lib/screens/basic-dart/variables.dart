import 'package:doc_flutter/core/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class Variables extends StatelessWidget {
  const Variables({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Variables",
      urlBack: "/basic-dart",
      child: Column(children: [Text("Variables")]),
    );
    ;
  }
}
