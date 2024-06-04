// Flutter base packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

// Widgets package
import 'package:adopte_a_candidate/widgets/buttons/big_buttons.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/buttons/check_boxes.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';

// Controllers package
import 'package:adopte_a_candidate/services/signup/signup_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AskIfCompany(),
    );
  }
}

class AskIfCompany extends StatefulWidget {
  const AskIfCompany({super.key});

  @override
  State<AskIfCompany> createState() => _AskIfCompanyState();
}

class _AskIfCompanyState extends State<AskIfCompany> {
  late bool isEnglish = true;
  final _formKey = GlobalKey<FormState>();

  bool isJobSeeker = false;
  bool isCompany = false;

  void _handleCheckBoxChange(bool? selected, String type) {

    // Retrieve if the user either is a jobseeker or a company
    // acts as a switch, user can't be both state at once
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

  // french signup page
  Widget frenchPage() {
    final controller = Get.put(SignUpController()); // retrieves Text editing controllers

    return Scaffold(
      appBar: const Logo(), // Prints the logo widget
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Flexible(
                      // Name Text field
                      child: CustomTextField(
                        controller: controller.name,
                        title: 'Nom:',
                        hinttext: 'Entrez votre nom',
                        width: MediaQuery.of(context).size.width,
                        heigth: 108,
                        isObscure: false,
                        showToggle: false,
                        isEmail: false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Flexible(
                      // email text field
                      child: CustomTextField(
                        controller: controller.email,
                        title: 'Mail:',
                        hinttext: 'Entrez votre mail',
                        isObscure: false,
                        isEmail: true,
                        width: MediaQuery.of(context).size.width,
                        heigth: 108,
                        showToggle: false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    // Password textfields
                    CustomTextField(
                      controller: controller.password,
                      title: 'Mot de passe:',
                      hinttext: 'Entrez votre mot de passe',
                      width: MediaQuery.of(context).size.width - 80,
                      heigth: 108,
                      isObscure: true,
                      showToggle: true,
                      isEmail: true,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    // confirm password text field
                    CustomTextField(
                      controller: controller.confirmPassword,
                      title: 'Confirmez votre mot de passe:',
                      hinttext: 'Confirmez votre mot de passe',
                      width: MediaQuery.of(context).size.width - 80,
                      heigth: 108,
                      isObscure: true,
                      showToggle: true,
                      isEmail: true,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    // Round box to retrieve whether the user is a jobseeker or part of a compnay
                    buildRoundCheckBox(
                      isChecked: isJobSeeker,
                      onChanged: (selected) =>
                          _handleCheckBoxChange(selected, 'jobSeeker'),
                      borderColor: const Color(0xffffd5c2),
                      checkedColor: const Color(0xffffd5c2),
                      uncheckedColor: Colors.grey[200] ?? Colors.grey,
                      checkedWidget:
                          const Icon(Icons.check, color: Colors.black),
                      size: 24,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Je suis un candidat',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    buildRoundCheckBox(
                      isChecked: isCompany,
                      onChanged: (selected) =>
                          _handleCheckBoxChange(selected, 'company'),
                      borderColor: const Color(0xffffd5c2),
                      checkedColor: const Color(0xffffd5c2),
                      uncheckedColor: Colors.grey[200] ?? Colors.grey,
                      checkedWidget:
                          const Icon(Icons.check, color: Colors.black),
                      size: 24,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Je suis une entreprise (HR)',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BigButton(
                      text: 'S\'inscrire',
                      width: 200,
                      heigth: 50,
                      textWidth: 20,
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
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Text(
                          'Déja un compte? Se connecter',
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
          );
        },
      ),
    );
  }


  // translated page to english
  Widget englishPage() {
    final controller = Get.put(SignUpController());

    return Scaffold(
      appBar: const Logo(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        Flexible(
                          child: CustomTextField(
                            controller: controller.name,
                            title: 'Name:',
                            hinttext: 'Enter your name',
                            width: MediaQuery.of(context).size.width,
                            heigth: 108,
                            isObscure: false,
                            showToggle: false,
                            isEmail: false,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Flexible(
                          child: CustomTextField(
                            controller: controller.email,
                            title: 'Email:',
                            hinttext: 'Enter your email',
                            isObscure: false,
                            isEmail: true,
                            width: MediaQuery.of(context).size.width,
                            heigth: 108,
                            showToggle: false,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        CustomTextField(
                          controller: controller.password,
                          title: 'Password:',
                          hinttext: 'Enter your password',
                          width: MediaQuery.of(context).size.width - 80,
                          heigth: 108,
                          isObscure: true,
                          showToggle: true,
                          isEmail: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        CustomTextField(
                          controller: controller.confirmPassword,
                          title: 'Confirm your password:',
                          hinttext: 'Confirm your password',
                          width: MediaQuery.of(context).size.width - 80,
                          heigth: 108,
                          isObscure: true,
                          showToggle: true,
                          isEmail: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        buildRoundCheckBox(
                          isChecked: isJobSeeker,
                          onChanged: (selected) =>
                              _handleCheckBoxChange(selected, 'jobSeeker'),
                          borderColor: const Color(0xffffd5c2),
                          checkedColor: const Color(0xffffd5c2),
                          uncheckedColor: Colors.grey[200] ?? Colors.grey,
                          checkedWidget:
                              const Icon(Icons.check, color: Colors.black),
                          size: 24,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'I am a candidate',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        buildRoundCheckBox(
                          isChecked: isCompany,
                          onChanged: (selected) =>
                              _handleCheckBoxChange(selected, 'company'),
                          borderColor: const Color(0xffffd5c2),
                          checkedColor: const Color(0xffffd5c2),
                          uncheckedColor: Colors.grey[200] ?? Colors.grey,
                          checkedWidget:
                              const Icon(Icons.check, color: Colors.black),
                          size: 24,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'I am a company (HR)',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigButton(
                          text: 'Subscribe',
                          width: 200,
                          heigth: 50,
                          textWidth: 20,
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
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text(
                              'Already have an account? Log in.',
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
          );

        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isEnglish ? englishPage() : frenchPage(),
    );
  }
}
