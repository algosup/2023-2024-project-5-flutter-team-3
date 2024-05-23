import 'package:adopte_a_candidate/pages/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/buttons/text_buttons.dart';
import 'package:adopte_a_candidate/services/signup/signup_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            // Use SingleChildScrollView if your content might overflow
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/LogoAdopteACandidate.svg',
                        semanticsLabel: 'Logo',
                        width: 150,
                        height: 125,
                      ),
                    ],
                  ),
                  const SizedBox(height: 150),
                  const Row(
                    children: [
                      SizedBox(width: 60),
                      Text(
                        'Email:',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  // Adding space between the email label and text field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: buildTextField(
                            hinttext: 'Entrez votre mail',
                            controller: controller.email,
                            context: context,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      SizedBox(width: 60),
                      Text(
                        'Mot de passe:',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: buildTextFieldPassword(
                              context: context,
                              controller: controller.password,
                              hinttext: 'Entrez votre mot de passe'),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 160),
                      SizedBox(
                        child: Text(
                          'Oups! J"ai oublié mon mot de passe',
                          textAlign: TextAlign.center,
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
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: buildElevatedButton(
                          buttonText: 'Login',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.goNamed('home');
                        },
                        child: const SizedBox(
                          child: Text(
                            'Inscription',
                            textAlign: TextAlign.center,
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
}
