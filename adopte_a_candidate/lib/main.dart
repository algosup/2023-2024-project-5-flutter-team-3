import 'package:flutter/material.dart';
import 'package:adopte_a_candidate/pages/logIn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main()  async {

    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
    );

    runApp(const LogIn());
}