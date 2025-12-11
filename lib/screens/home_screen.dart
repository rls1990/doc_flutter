import 'package:doc_flutter/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      backgroundColor: colors.surface,
      appBar: AppBar(
        title: Text("Flutter Doc", style: TextStyle(color: colors.onPrimary)),
        backgroundColor: colors.primary,
        elevation: 4,
        shadowColor: colors.shadow,
        actions: [
          // ToggleButton con fondo animado
          GestureDetector(
            onTap: () => themeProvider.toggleTheme(),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: colors.onPrimary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  color: isDarkMode
                      ? colors.primaryContainer
                      : colors.secondaryContainer,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    // ignore: deprecated_member_use
                    color: colors.onPrimary.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Stack(
                  children: [
                    // Ícono del sol (siempre visible)
                    Positioned(
                      left: 4,
                      top: 0,
                      bottom: 0,
                      child: Icon(
                        Icons.light_mode,
                        size: 20,
                        color: isDarkMode
                            // ignore: deprecated_member_use
                            ? colors.onPrimaryContainer.withOpacity(0.5)
                            : colors.onSecondaryContainer,
                      ),
                    ),

                    // Ícono de la luna (siempre visible)
                    Positioned(
                      right: 4,
                      top: 0,
                      bottom: 0,
                      child: Icon(
                        Icons.dark_mode,
                        size: 20,
                        color: isDarkMode
                            ? colors.onPrimaryContainer
                            // ignore: deprecated_member_use
                            : colors.onSecondaryContainer.withOpacity(0.5),
                      ),
                    ),

                    // Círculo deslizante
                    AnimatedAlign(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      alignment: isDarkMode
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.all(3),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: colors.onPrimary,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              // ignore: deprecated_member_use
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 7,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Icon(
                          isDarkMode ? Icons.dark_mode : Icons.light_mode,
                          size: 14,
                          color: isDarkMode
                              ? colors.onPrimaryContainer
                              : Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(children: []),
    );
  }
}
