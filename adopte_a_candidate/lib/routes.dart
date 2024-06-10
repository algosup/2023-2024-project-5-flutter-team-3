import 'package:adopte_a_candidate/pages/profile_page.dart';
import 'package:adopte_a_candidate/pages/company/company_profile_page.dart';
import 'package:adopte_a_candidate/pages/company/new_job_offer_page.dart';
import 'package:adopte_a_candidate/pages/company/edit_job_offer_page.dart';
import 'package:adopte_a_candidate/pages/sign_up.dart';
import 'package:adopte_a_candidate/pages/log_in.dart';
import 'package:adopte_a_candidate/pages/swipe.dart';
import 'package:adopte_a_candidate/pages/settings.dart';
import 'package:adopte_a_candidate/pages/term_of_use.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:adopte_a_candidate/pages/message.dart';

final GoRouter router = GoRouter(
  initialLocation: '/sign_up',
  routes: [
    GoRoute(
      path: '/sign_up',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
    GoRoute(
      path: '/log_in',
      name: 'log_in',
      builder: (BuildContext context, GoRouterState state) {
        return const LogIn();
      },
    ),
    GoRoute(
        path: '/swipe',
        name: 'swipe',
        builder: (BuildContext context, GoRouterState state) {
          return const SwipePage();
        }),
    GoRoute(
        path: '/message',
        name: 'message',
        builder: (BuildContext context, GoRouterState state) {
          return const MessagePage();
        }),
    GoRoute(
      path: '/profile',
      name: 'profile',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const MaterialPage(child: ProfilePage());
      }
    ),
    GoRoute(
      path: '/company_profile',
      name: 'company_profile',
      builder: (BuildContext context, GoRouterState state) {
        return const CompanyProfilePage();
      }
    ),
    GoRoute(
      path: '/new_job_offer',
      name: 'new_job_offer',
      builder: (BuildContext context, GoRouterState state) {
        return const NewJobOfferPage();
      }
    ),
    GoRoute(
      path: '/edit_job_offer',
      name: 'edit_job_offer',
      builder: (BuildContext context, GoRouterState state) {
        return const EditJobOfferPage();
      }
    ),
    GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (BuildContext context, GoRouterState state) {
          return const SettingsPage();
        }),
    GoRoute(
        path: '/term_of_use',
        name: 'term_of_use',
        builder: (BuildContext context, GoRouterState state) {
          return const TermOfUsePage();
        }),
  ],
);
