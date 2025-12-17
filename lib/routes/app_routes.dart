// lib/routes/app_router.dart
import 'package:doc_flutter/screens/advanced-dart/advanced_dart.dart';
import 'package:doc_flutter/screens/animations/animations.dart';
import 'package:doc_flutter/screens/api-integration/api_integration.dart';
import 'package:doc_flutter/screens/basic-dart/basic_dart.dart';
import 'package:doc_flutter/screens/basic-flutter/basic_flutter.dart';
import 'package:doc_flutter/screens/state-management/state_management.dart';
import 'package:doc_flutter/screens/testing/testing.dart';
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
          GoRoute(
            path: 'advanced-dart',
            name: 'advanced-dart',
            // builder: (context, state) => const BasicDart(),
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const AdvancedDart(),
            ),
            routes: [],
          ),
          GoRoute(
            path: 'basic-flutter',
            name: 'basic-flutter',
            // builder: (context, state) => const BasicDart(),
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const BasicFlutter(),
            ),
            routes: [],
          ),
          GoRoute(
            path: 'state-management',
            name: 'state-management',
            // builder: (context, state) => const BasicDart(),
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const StateManagement(),
            ),
            routes: [],
          ),
          GoRoute(
            path: 'api-integration',
            name: 'api-integration',
            // builder: (context, state) => const BasicDart(),
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ApiIntegration(),
            ),
            routes: [],
          ),
          GoRoute(
            path: 'animations',
            name: 'animations',
            // builder: (context, state) => const BasicDart(),
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const AnimationsFlutter(),
            ),
            routes: [],
          ),
          GoRoute(
            path: 'testing',
            name: 'testing',
            // builder: (context, state) => const BasicDart(),
            pageBuilder: (context, state) =>
                NoTransitionPage(key: state.pageKey, child: const Testing()),
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
