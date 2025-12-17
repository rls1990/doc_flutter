import 'package:doc_flutter/core/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class ApiIntegration extends StatelessWidget {
  const ApiIntegration({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Api Integration",
      urlBack: "/",
      child: Column(children: [Text("Api Integration")]),
    );
  }
}
