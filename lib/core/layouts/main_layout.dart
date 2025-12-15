import 'package:doc_flutter/core/layouts/components/theme_toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final String title;
  final String? urlBack;

  const MainLayout({
    super.key,
    required this.child,
    this.title = "Flutter Doc",
    this.urlBack,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colors.surface,
      appBar: AppBar(
        title: TweenAnimationBuilder<double>(
          duration: const Duration(milliseconds: 300),
          tween: Tween(begin: 0.0, end: 1.0),
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(20 * (1 - value), 0), // Simple slide
                child: Text(title, style: TextStyle(color: colors.onPrimary)),
              ),
            );
          },
        ),
        backgroundColor: colors.primary,
        elevation: 4,
        shadowColor: colors.shadow,
        iconTheme: IconThemeData(color: colors.onPrimary),
        leading: urlBack != null
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  context.go(urlBack!);
                },
              )
            : null,
        actions: [ThemeToggleButton()],
      ),
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.all(16.0), child: child),
      ),
    );
  }
}
