// lib/routes/app_router.dart
import 'package:doc_flutter/screens/advanced-dart/advanced_dart.dart';
import 'package:doc_flutter/screens/animations/animations.dart';
import 'package:doc_flutter/screens/api-integration/api_integration.dart';
import 'package:doc_flutter/screens/basic-dart/basic_dart.dart';
import 'package:doc_flutter/screens/basic-dart/variables.dart';
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
        //pageBuilder: (context, state) {
        //   return _custonTransitionPage(HomeScreen());
        // },
        pageBuilder: (context, state) =>
            _noTransitionPage(key: "home", child: HomeScreen()),
        routes: [
          GoRoute(
            path: 'basic-dart',
            name: 'basic-dart',
            // builder: (context, state) => const BasicDart(),
            pageBuilder: (context, state) =>
                _noTransitionPage(key: "basic-dart", child: BasicDart()),
            routes: [
              GoRoute(
                path: 'variables',
                name: 'variables',
                // builder: (context, state) => const Variables(),
                pageBuilder: (context, state) =>
                    _noTransitionPage(key: "variables", child: Variables()),
                routes: [],
              ),
            ],
          ),
          GoRoute(
            path: 'advanced-dart',
            name: 'advanced-dart',
            // builder: (context, state) => const AdvancedDart(),
            pageBuilder: (context, state) =>
                _noTransitionPage(key: "advanced-dart", child: AdvancedDart()),
            routes: [],
          ),
          GoRoute(
            path: 'basic-flutter',
            name: 'basic-flutter',
            // builder: (context, state) => const BasicFlutter(),
            pageBuilder: (context, state) =>
                _noTransitionPage(key: "basic-flutter", child: BasicFlutter()),
            routes: [],
          ),
          GoRoute(
            path: 'state-management',
            name: 'state-management',
            // builder: (context, state) => const StateManagement(),
            pageBuilder: (context, state) => _noTransitionPage(
              key: "state-management",
              child: StateManagement(),
            ),
            routes: [],
          ),
          GoRoute(
            path: 'api-integration',
            name: 'api-integration',
            // builder: (context, state) => const ApiIntegration(),
            pageBuilder: (context, state) => _noTransitionPage(
              key: "api-integration",
              child: ApiIntegration(),
            ),
            routes: [],
          ),
          GoRoute(
            path: 'animations',
            name: 'animations',
            // builder: (context, state) => const AnimationsFlutter(),
            pageBuilder: (context, state) => _noTransitionPage(
              key: "animations",
              child: AnimationsFlutter(),
            ),
            routes: [],
          ),
          GoRoute(
            path: 'testing',
            name: 'testing',
            // builder: (context, state) => const Testing(),
            pageBuilder: (context, state) =>
                _noTransitionPage(key: "testing", child: Testing()),
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

  static NoTransitionPage<dynamic> _noTransitionPage({
    required String key,
    required Widget child,
    bool maintainState = false, //mantener en cache
  }) {
    var keyGen = maintainState
        ? ValueKey(key)
        : ValueKey("$key-${DateTime.now().millisecond}");
    return NoTransitionPage(
      // key: ValueKey("$key-${DateTime.now().millisecond}"),
      key: keyGen,
      child: child,
    );
  }

  // ignore: unused_element
  static CustomTransitionPage<dynamic> _custonTransitionPage1(Widget child) {
    return CustomTransitionPage(
      key: const ValueKey('home'), // Key constante
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child; // Sin transición
      },
      transitionDuration: Duration.zero,
      maintainState: false, // ¡IMPORTANTE! No mantener en cache
    );
  }
}
