import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_flutter_app_test/common/presentation/pages/introduction/introduction_screen.dart';
import 'package:recipe_flutter_app_test/features/login/presentation/pages/log_in_screen.dart';
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