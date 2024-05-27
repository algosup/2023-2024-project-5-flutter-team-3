// Flutter base packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Widgets package
import 'package:adopte_a_candidate/widgets/buttons/text_buttons.dart';
import 'package:adopte_a_candidate/widgets/buttons/big_buttons.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/buttons/check_boxes.dart';

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

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.green,
          // actions: <Widget>[
          //   SvgPicture.asset(
          //     'assets/images/LogoAdopteACandidate.svg',
          //     semanticsLabel: 'Logo',
          //     height: 200.0,
          //   ),
          // ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Flexible(
                        child: CustomTextField(
                          controller: controller.email,
                          title: 'Nom:',
                          hinttext: 'Entrez votre nom',
                          width: MediaQuery.of(context).size.width,
                          heigth: 108,
                          isObscure: false,
                          isEmail: true,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      CustomTextField(
                        controller: controller.password,
                        title: 'Mot de passe:',
                        hinttext: 'Entrez votre mot de passe',
                        width: MediaQuery.of(context).size.width - 80,
                        heigth: 108,
                        isObscure: false,
                        isEmail: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      CustomTextField(
                        controller: controller.confirmPassword,
                        title: 'Confirmez votre mot de passe:',
                        hinttext: 'Confirmez votre mot de passe',
                        width: MediaQuery.of(context).size.width - 80,
                        heigth: 108,
                        isObscure: false,
                        isEmail: true,
                      ),
                    ],
                  ),
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
                        'Je suis un candidat',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
        },
      ),
    );
  }
}
