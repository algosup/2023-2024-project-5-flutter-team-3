import 'package:adopte_a_candidate/pages/job_seeker/job_seeker_match.dart';
import 'package:adopte_a_candidate/pages/job_seeker/job_seeker_profile_page.dart';
import 'package:adopte_a_candidate/pages/job_seeker/job_seeker_swipe_page.dart';

import 'package:adopte_a_candidate/pages/company/company_profile_page.dart';
import 'package:adopte_a_candidate/pages/company/new_job_offer_page.dart';
import 'package:adopte_a_candidate/pages/company/edit_job_offer_page.dart';
import 'package:adopte_a_candidate/pages/company/company_swipe_page.dart';
import 'package:adopte_a_candidate/pages/company/company_message_lobby_page.dart';
import 'package:adopte_a_candidate/pages/company/company_message_page.dart';

import 'package:adopte_a_candidate/pages/job_seeker/job_seeker_message.dart';
import 'package:adopte_a_candidate/pages/sign_up.dart';
import 'package:adopte_a_candidate/pages/log_in.dart';
import 'package:adopte_a_candidate/pages/splash_screen.dart';
import 'package:adopte_a_candidate/pages/settings.dart';
import 'package:adopte_a_candidate/pages/term_of_use.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final GoRouter router = GoRouter(
  initialLocation: '/sign_up',
  routes: <RouteBase>[
    GoRoute(
      path: '/splash',
      name: 'splash',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
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
        path: '/job_seeker_swipe',
        name: 'job_seeker_swipe',
        builder: (BuildContext context, GoRouterState state) {
          return const SwipePage();
        }),
    GoRoute(
        path: '/job_seeker_message',
        name: 'job_seeker_message',
        builder: (BuildContext context, GoRouterState state) {
          return const MessagePage();
        }),
    GoRoute(
        path: '/job_seeker_profile',
        name: 'job_seeker_profile',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return const MaterialPage(child: ProfilePage());
        }),
    GoRoute(
        path: '/company_profile',
        name: 'company_profile',
        builder: (BuildContext context, GoRouterState state) {
          return const CompanyProfilePage();
        }),
    GoRoute(
        path: '/new_job_offer',
        name: 'new_job_offer',
        builder: (BuildContext context, GoRouterState state) {
          return const NewJobOfferPage();
        }),
    GoRoute(
        path: '/edit_job_offer',
        name: 'edit_job_offer',
        builder: (BuildContext context, GoRouterState state) {
          return const EditJobOfferPage();
        }),
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
    GoRoute(
        path: '/company/company_swipe_page',
        name: 'company_swipe',
        builder: (BuildContext context, GoRouterState state) {
          return const CompanySwipePage();
        }),
    GoRoute(
        path: '/company/company_message_lobby_page',
        name: 'company_message_lobby',
        builder: (BuildContext context, GoRouterState state) {
          return const CompanyMessageLobbyPage();
        }),
    GoRoute(
        path: '/company/company_message_page',
        name: 'company_message',
        builder: (BuildContext context, GoRouterState state) {
          return const CompanyMessagePage();
        }),
  ],
);
