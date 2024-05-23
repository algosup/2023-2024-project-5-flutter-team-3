import 'package:adopte_a_candidate/services/authentification/authentification_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:adopte_a_candidate/pages/sign_up.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();
  final confirmPassword = TextEditingController();

  bool isCompany = false;


  Future<void> registerUser(String email, String password, String name, bool isCompany) async {
    try {
      // Assuming you have a service class that handles Firebase operations
      await FirebaseAuthService.registerUser(email, password, name, isCompany);
      Get.snackbar('Success', 'User registered successfully');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}