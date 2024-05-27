// Flutter base packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// Custom widgets
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/buttons/text_buttons.dart';
import 'package:adopte_a_candidate/widgets/buttons/big_buttons.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';

// Custom controllers
import 'package:adopte_a_candidate/services/signup/signup_controller.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      appBar: const Logo(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 150.0),
            child: SingleChildScrollView(
              // Use SingleChildScrollView if your content might overflow
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        CustomTextField(
                          controller: controller.email,
                          title: 'Email:',
                          hinttext: 'Entrez votre mail',
                          width: MediaQuery.of(context).size.width - 80,
                          heigth: 108,
                          isObscure: false,
                          showToggle: false,
                          isEmail: true,
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
                          isObscure: true,
                          showToggle: true,
                          isEmail: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomTextButton(
                          text: 'Mot de passe oublié ?',
                          textWidth: 12,
                          pageName: 'home',
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
                            pageName: 'swipe',
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
            ),
          );
        },
      ),
    );
  }
}
