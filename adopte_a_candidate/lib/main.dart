// import 'package:adopte_a_candidate/pages/log_in.dart';
import 'package:adopte_a_candidate/pages/sign_up.dart';
import 'package:adopte_a_candidate/services/authentification/authentification_repository.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'firestore/firebase_options.dart';

void main()  {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
        .then((value) => Get.put(AuthentificationRepository()));
    runApp(const Home());
}

/*void InitializeDataBase(void runApp) async {
    await Firebase.initializeApp(
       options: DefaultFirebaseOptions.currentPlatform,
    );
}
*/


