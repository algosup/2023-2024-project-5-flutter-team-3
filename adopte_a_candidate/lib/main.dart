import 'package:adopte_a_candidate/services/authentification/authentification_repository.dart';
import 'package:adopte_a_candidate/services/providers/providers.dart';
import 'package:adopte_a_candidate/services/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'firestore/firebase_options.dart';


// Routes package
import 'package:adopte_a_candidate/routes.dart';

import 'l10n/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(AuthentificationRepository());
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => ProfileState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      supportedLocales: L10n.all,
      locale: const Locale('en'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}

// ignore: non_constant_identifier_names
void InitializeDataBase(void runApp) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
