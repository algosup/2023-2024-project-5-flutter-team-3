// Flutter base packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Widgets package
import 'package:adopte_a_candidate/widgets/buttons/big_buttons.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/buttons/check_boxes.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';

// Controllers package

import '../services/signup/signup_controller.dart';
import 'log_in.dart';

class AskIfCompany extends StatefulWidget {
  const AskIfCompany({super.key});

  @override
  State<AskIfCompany> createState() => _AskIfCompanyState();
}

class _AskIfCompanyState extends State<AskIfCompany> {
  bool isJobSeeker = false;
  bool isCompany = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _handleCheckBoxChange(bool? selected, String type) {
    setState(() {
      if (type == 'jobSeeker') {
        isJobSeeker = selected ?? false;
        if (isJobSeeker) {
          isCompany = false;
        }
      } else if (type == 'company') {
        isCompany = selected ?? false;
        if (isCompany) {
          isJobSeeker = false;
        }
      }
    });
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter email';
    }
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!regex.hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter password';
    }
    return null;
  }

  String? _validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Confirm password';
    }
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  Widget buildCheckBoxRow(
      String label, bool isChecked, void Function(bool?) onChanged) {
    return Row(
      children: [
        buildRoundCheckBox(
          isChecked: isChecked,
          onChanged: onChanged,
          borderColor: const Color(0xffffd5c2),
          checkedColor: const Color(0xffffd5c2),
          uncheckedColor: Colors.grey[200] ?? Colors.grey,
          checkedWidget: const Icon(Icons.check, color: Colors.black),
          size: 24,
        ),
        const SizedBox(width: 10),
        Text(
          label,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      appBar: const Logo(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CustomTextField(
                      controller: controller.name,
                      title: 'Name',
                      hintText: 'Enter name',
                      width: MediaQuery.of(context).size.width,
                      height: 118,
                      isObscure: false,
                      showToggle: false,
                      isEmail: false,
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: controller.email,
                      title: 'Email',
                      hintText: 'Enter email',
                      isObscure: false,
                      isEmail: true,
                      width: MediaQuery.of(context).size.width,
                      height: 118,
                      showToggle: false,
                      validator: _validateEmail,
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: controller.password,
                      title: 'Password',
                      hintText: 'Enter password',
                      width: MediaQuery.of(context).size.width - 80,
                      height: 118,
                      isObscure: true,
                      showToggle: true,
                      isEmail: false,
                      validator: _validatePassword,
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: controller.confirmPassword,
                      title: 'Confirm Password',
                      hintText: 'Confirm password',
                      width: MediaQuery.of(context).size.width - 80,
                      height: 118,
                      isObscure: true,
                      showToggle: true,
                      isEmail: false,
                      validator: (value) => _validateConfirmPassword(
                          value, controller.password.text),
                    ),
                    const SizedBox(height: 10),
                    buildCheckBoxRow(
                      'I am a Job Seeker',
                      isJobSeeker,
                          (selected) => _handleCheckBoxChange(selected, 'jobSeeker'),
                    ),
                    const SizedBox(height: 15),
                    buildCheckBoxRow(
                      'I am a Company',
                      isCompany,
                          (selected) => _handleCheckBoxChange(selected, 'company'),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigButton(
                          text: 'Sign Up',
                          width: 200,
                          height: 50,
                          textWidth: 20,
                          onPressed: () async {
                            if (_formKey.currentState?.validate() == true &&
                                (isJobSeeker || isCompany)) {
                              try {
                                await controller.registerUser(
                                  controller.email.text,
                                  controller.password.text,
                                  controller.name.text,
                                  isCompany,
                                );
                                // Navigate to log_in page on successful sign-up
                                context.go('/log_in');
                              } catch (e) {
                                Get.snackbar(
                                  'Error',
                                  'Sign up failed: ${e.toString()}',
                                  snackPosition: SnackPosition.BOTTOM,
                                );
                              }
                            } else {
                              Get.snackbar(
                                'Error',
                                'Please fill all fields',
                                snackPosition: SnackPosition.BOTTOM,
                              );
                            }
                          },
                          pageName: 'log_in',
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const LogIn());
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text(
                              'Already have an account? Log In',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}