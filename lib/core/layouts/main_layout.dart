import 'package:doc_flutter/core/layouts/components/theme_toggle_button.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final String title;

  const MainLayout({
    super.key,
    required this.child,
    this.title = "Flutter Doc",
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colors.surface,
      appBar: AppBar(
        title: Text("Flutter Doc", style: TextStyle(color: colors.onPrimary)),
        backgroundColor: colors.primary,
        elevation: 4,
        shadowColor: colors.shadow,
        actions: [
          // ToggleButton con fondo animado
          ThemeToggleButton(),
        ],
      ),
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.all(16.0), child: child),
      ),
    );
  }
}
