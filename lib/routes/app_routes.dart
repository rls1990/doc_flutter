// lib/routes/app_router.dart
import 'package:doc_flutter/screens/basic-dart/basic_dart.dart';
import 'package:go_router/go_router.dart';
import 'package:doc_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  // Instancia del router
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      // Ruta principal
      GoRoute(
        path: '/',
        name: 'home',
        //builder: (context, state) => const HomeScreen(),
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: const ValueKey('home'), // Key constante
            child: const HomeScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return child; // Sin transición
                },
            transitionDuration: Duration.zero,
            maintainState: false, // ¡IMPORTANTE! No mantener en cache
          );
        },
        routes: [
          GoRoute(
            path: 'basic-dart',
            name: 'basic-dart',
            // builder: (context, state) => const BasicDart(),
            pageBuilder: (context, state) =>
                NoTransitionPage(key: state.pageKey, child: const BasicDart()),
            routes: [],
          ),
        ],
      ),
    ],

    // Observador para debugging
    observers: [
      // Puedes agregar Firebase Analytics aquí
      // FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
    ],

    // Página de error
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Error: ${state.error}'))),
  );
}
