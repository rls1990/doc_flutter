import 'package:doc_flutter/core/theme/app_theme.dart';
import 'package:doc_flutter/providers/theme_provider.dart';
import 'package:doc_flutter/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp.router(
            title: 'Flutter Doc',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeProvider.themeMode,
            // home: const HomeScreen(),
            routerConfig: AppRoutes.router, // ← Configuración del router
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
