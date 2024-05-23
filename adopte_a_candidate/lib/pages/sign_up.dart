import 'package:adopte_a_candidate/pages/log_in.dart';
import 'package:adopte_a_candidate/services/signup/signup_controller.dart';
import 'package:adopte_a_candidate/widgets/buttons/text_buttons.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/buttons/check_boxes.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AskIfCompany(),
    );
  }
}

class AskIfCompany extends StatefulWidget {
  const AskIfCompany({Key? key}) : super(key: key);

  @override
  State<AskIfCompany> createState() => _AskIfCompanyState();
}

class _AskIfCompanyState extends State<AskIfCompany> {
  final _formKey = GlobalKey<FormState>();

  bool isJobSeeker = false;
  bool isCompany = false;


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


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());


    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Row(
                  children: <Widget>[
                    buildLogo(screenWidth, screenHeight),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.15),
                  const Text(
                    'Nom entier:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              SizedBox(
                child: buildTextField(
                  controller: controller.name,
                  context: context,
                  hinttext: 'Entrez votre nom et prénom',
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.15),
                  const Text(
                    'Email:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              SizedBox(
                child: buildTextField(
                  context: context,
                  controller: controller.email,
                  hinttext: 'Entrez votre mail',
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.15),
                  const Text(
                    'Mot de passe:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              SizedBox(
                child: buildTextFieldPassword(
                  context: context,
                  controller: controller.password,
                  hinttext: 'Entrez votre mot de passe',
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.15),
                  const Text(
                    'Confirmez votre mot de passe:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              SizedBox(
                child: buildTextFieldPassword(
                  controller: controller.confirmPassword,
                  context: context,
                  hinttext: 'Confirmez votre mot de passe',
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.15),
                  buildRoundCheckBox(
                    isChecked: isJobSeeker,
                    onChanged: (selected) =>
                        _handleCheckBoxChange(selected, 'jobSeeker'),
                    borderColor: const Color(0xffffd5c2),
                    checkedColor: const Color(0xffffd5c2),
                    uncheckedColor: Colors.grey[200] ?? Colors.grey,
                    checkedWidget: const Icon(Icons.check, color: Colors.black),
                    size: 24,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Je suis un candidat',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.15),
                  buildRoundCheckBox(
                    isChecked: isCompany,
                    onChanged: (selected) =>
                        _handleCheckBoxChange(selected, 'company'),
                    borderColor: const Color(0xffffd5c2),
                    checkedColor: const Color(0xffffd5c2),
                    uncheckedColor: Colors.grey[200] ?? Colors.grey,
                    checkedWidget: const Icon(Icons.check, color: Colors.black),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildElevatedButton(
                    buttonText: 'S"inscrire',
                    onPressed: () {
                      if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                        SignUpController.instance.registerUser(
                          controller.email.text.trim(),
                          controller.password.text.trim(),
                          controller.name.text.trim(),
                          isCompany,
                        );
                        debugPrint('${isCompany}');
                      }
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LogIn()),
                      );
                    },
                    child: const Text(
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
