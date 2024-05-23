// ignore_for_file: depend_on_referenced_packages

import 'package:adopte_a_candidate/services/authentification/authentification_repository.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'firestore/firebase_options.dart';

// Routes package
import 'package:go_router/go_router.dart';
import 'package:adopte_a_candidate/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthentificationRepository()));
  runApp(const MyApp());
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


/*void InitializeDataBase(void runApp) async {
    await Firebase.initializeApp(
       options: DefaultFirebaseOptions.currentPlatform,
    );
}
*/


