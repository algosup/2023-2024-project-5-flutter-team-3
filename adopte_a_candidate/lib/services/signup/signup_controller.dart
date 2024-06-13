// SignUpController
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:adopte_a_candidate/services/authentification/authentification_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();
  final confirmPassword = TextEditingController();

  Future<void> registerUser(String email, String password, String name, bool isCompany) async {
    try {
      await AuthentificationRepository().createUser(email, password, name, isCompany);
      Get.snackbar('Success', 'User registered successfully');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
