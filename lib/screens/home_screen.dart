import 'package:doc_flutter/core/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;
    // final themeProvider = Provider.of<ThemeProvider>(context, listen: true);
    // final isDarkMode = themeProvider.isDarkMode;

    return MainLayout(child: Column(children: [Text("home")]));
  }
}
