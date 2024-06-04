// ignore_for_file: depend_on_referenced_packages

import 'package:adopte_a_candidate/services/authentification/authentification_repository.dart';
import 'package:adopte_a_candidate/services/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'firestore/firebase_options.dart';

// Routes package
import 'package:adopte_a_candidate/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthentificationRepository()));
  runApp( ChangeNotifierProvider(create: (BuildContext context) { return ProfileState();},
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

// ignore: non_constant_identifier_names
void InitializeDataBase(void runApp) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
