import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_flutter_app_test/router/introduction/introduction_screen.dart';
import 'package:recipe_flutter_app_test/screens/login/login_screen.dart';
import 'package:recipe_flutter_app_test/widgets/app_scaffold.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return AppScaffold(child: IntroductionScreen() );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginScreen();
          },
        ),
      ],
    ),
  ],
);