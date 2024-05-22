// import 'package:adopte_a_candidate/pages/log_in.dart';
import 'package:adopte_a_candidate/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firestore/firebase_options.dart';

void main()  {

    InitializeDataBase(
        runApp(const Home())
        );
}

void InitializeDataBase(void runApp) async {
    await Firebase.initializeApp(
       options: DefaultFirebaseOptions.currentPlatform,
    );
}



