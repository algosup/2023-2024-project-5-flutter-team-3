import 'package:adopte_a_candidate/services/signup/signup_controller.dart';
import 'package:adopte_a_candidate/widgets/buttons/big_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Widgets package
import 'package:adopte_a_candidate/widgets/buttons/text_buttons.dart';
import 'package:adopte_a_candidate/widgets/buttons/big_buttons.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/fields/password_field.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/buttons/check_boxes.dart';

// Routes package
import 'package:go_router/go_router.dart';

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
      appBar: AppBar(
        title: const Text('title'),
        centerTitle: true,
        backgroundColor: const Color(0xffffd5c2),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 25),
            // SizedBox(
            //   child: CustomTextField(
            //     controller: controller.email,
            //     title: 'Nom:',
            //     hinttext: 'Entrez votre nom',
            //     isObscure: false,
            //     isEmail: true,
            //   ),
            // ),
            const SizedBox(height: 5),
            // Row(
            //   children: [
            //     const SizedBox(height: 5),
            //     SizedBox(
            //       child: CustomTextField(
            //         controller: controller.email,
            //         title: 'Email:',
            //         hinttext: 'Entrez votre mail',
            //         isObscure: false,
            //         isEmail: true,
            //       ),
            //     ),
            //     const SizedBox(height: 5),
            //   ],
            // ),
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
    );
  }
}
