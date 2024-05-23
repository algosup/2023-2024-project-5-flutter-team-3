import 'package:adopte_a_candidate/services/authentification/authentification_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();
  final confirmPassword = TextEditingController();

  void registerUser(String email, String password, String name) {
    String? error = AuthentificationRepository.instance.createUser(email, password, name) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString(),));
    }
  }
}