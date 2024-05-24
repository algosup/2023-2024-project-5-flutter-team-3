import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/fields/password_field.dart';
import 'package:adopte_a_candidate/widgets/buttons/text_buttons.dart';
import 'package:adopte_a_candidate/widgets/buttons/big_buttons.dart';
import 'package:adopte_a_candidate/services/signup/signup_controller.dart';
import 'package:get/get.dart';

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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      children: <Widget>[
                        CustomTextField(
                          controller: controller.email,
                          title: 'Email:',
                          hinttext: 'Entrez votre mail',
                          isObscure: false,
                          isEmail: true,
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
                      SizedBox(width: 250),
                      SizedBox(
                        child: CustomTextButton(
                          text: 'Mot de passe oublié?',
                          textWidth: 12,
                          pageName: 'home',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: BigButton(
                          text: 'Connexion',
                          width: 200,
                          heigth: 50,
                          textWidth: 16,
                          pageName: 'home',
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: CustomTextButton(
                          text: 'Pas encore de compte? S\'inscrire',
                          textWidth: 12,
                          pageName: 'home',
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
