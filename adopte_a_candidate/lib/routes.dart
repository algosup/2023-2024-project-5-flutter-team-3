// ignore_for_file: depend_on_referenced_packages

import 'package:adopte_a_candidate/pages/sign_up.dart';
import 'package:adopte_a_candidate/pages/log_in.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/pages/sign_up',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
    GoRoute(
      path: '/pages/log_in',
      name: 'log_in',
      builder: (BuildContext context, GoRouterState state) {
        return const LogIn();
      },
    ),
  ],
);
