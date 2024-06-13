// Flutter base packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:adopte_a_candidate/l10n/app_localizations.dart';

// Widgets package
import 'package:adopte_a_candidate/widgets/buttons/big_buttons.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/buttons/check_boxes.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';

// Controllers package
import 'package:adopte_a_candidate/services/signup/signup_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _AskIfCompanyState();
}

class _AskIfCompanyState extends State<Home> {
  bool isJobSeeker = true;
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

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.enterName;
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.enterEmail;
    }
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!regex.hasMatch(value)) {
      return AppLocalizations.of(context)!.emailNotValid;
      ;
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.enterPassword;
    }
    return null;
  }

  String? _validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.confirmPassword;
    }
    if (value != password) {
      return AppLocalizations.of(context)!.passwordNotMatch;
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
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: const Logo(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CustomTextField(
                      controller: controller.name,
                      title: AppLocalizations.of(context)!.name,
                      hintText: AppLocalizations.of(context)!.enterName,
                      width: MediaQuery.of(context).size.width,
                      height: 118,
                      isObscure: false,
                      showToggle: false,
                      isEmail: false,
                      validator: _validateName,
                    ),
                    const SizedBox(height: 15),
                    CustomTextField(
                      controller: controller.email,
                      title: AppLocalizations.of(context)!.email,
                      hintText: AppLocalizations.of(context)!.enterEmail,
                      isObscure: false,
                      isEmail: true,
                      width: MediaQuery.of(context).size.width,
                      height: 118,
                      showToggle: false,
                      validator: _validateEmail,
                    ),
                    const SizedBox(height: 15),
                    CustomTextField(
                      controller: controller.password,
                      title: AppLocalizations.of(context)!.password,
                      hintText: AppLocalizations.of(context)!.enterPassword,
                      width: MediaQuery.of(context).size.width - 80,
                      height: 118,
                      isObscure: true,
                      showToggle: true,
                      isEmail: false,
                      validator: _validatePassword,
                    ),
                    const SizedBox(height: 15),
                    CustomTextField(
                      controller: controller.confirmPassword,
                      title: AppLocalizations.of(context)!.confirmPassword,
                      hintText: AppLocalizations.of(context)!.confirmPassword,
                      width: MediaQuery.of(context).size.width - 80,
                      height: 118,
                      isObscure: true,
                      showToggle: true,
                      isEmail: false,
                      validator: (value) => _validateConfirmPassword(
                          value, controller.password.text),
                    ),
                    const SizedBox(height: 15),
                    buildCheckBoxRow(
                      AppLocalizations.of(context)!.isCandidate,
                      isJobSeeker,
                      (selected) =>
                          _handleCheckBoxChange(selected, 'jobSeeker'),
                    ),
                    const SizedBox(height: 15),
                    buildCheckBoxRow(
                      AppLocalizations.of(context)!.isCompany,
                      isCompany,
                      (selected) => _handleCheckBoxChange(selected, 'company'),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigButton(
                          text: AppLocalizations.of(context)!.subscribe,
                          width: 200,
                          height: 50,
                          textWidth: 20,
                          onPressed: () {
                            if (_formKey.currentState!.validate() == true &&
                                (isJobSeeker || isCompany)) {
                              // Add your sign-up logic here, and then navigate to the log_in page
                              if(isJobSeeker && !isCompany) {
                                context.goNamed('job_seeker_swipe');
                              } else {
                                context.goNamed('company_swipe');
                              }
                            } else {
                              // Show error message
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
                            context.goNamed('log_in');
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text(
                              AppLocalizations.of(context)!.alreadyHaveAccount,
                              style: const TextStyle(
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
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
