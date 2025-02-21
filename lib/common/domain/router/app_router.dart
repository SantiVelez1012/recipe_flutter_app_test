import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_flutter_app_test/features/login/presentation/pages/log_in_screen.dart';
import 'package:recipe_flutter_app_test/features/tutorial/presentation/pages/introduction_page.dart';
import 'package:recipe_flutter_app_test/common/widgets/app_scaffold.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return AppScaffold(child: IntroductionPage() );
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