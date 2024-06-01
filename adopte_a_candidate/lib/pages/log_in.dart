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



// This is the login page of the app
class LogIn extends StatelessWidget {
  final bool isEnglish = true;
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isEnglish ? englishPage() : frenchPage(), // linked to the boolean value, prints the french page if isEnglish = false, otherwise prints the english page
    );
  }

  Widget frenchPage() {
    final controller = Get.put(SignUpController()); // TextEditingControllers refer to the file for more information
    return Scaffold(
      appBar: const Logo(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      // Text field for the email
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
                      // Text field for the password
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
                      // Button that leads the user back to the signup page, TODO, make the password forgot page
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
                        // Button for connexion, leads to the swipe page of the user once connected
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
                      // No account button, leads to the signup page
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

// Same page as above but in english, it does all the same, but has been manually translated to english.
Widget englishPage() {
  final controller = Get.put(SignUpController());
  return Scaffold(
    appBar: const Logo(),
    body: LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
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
                      hinttext: 'Enter your email',
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
                      title: 'Password:',
                      hinttext: 'Enter your password',
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
                      text: 'Forgot Password ?',
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
                        text: 'No account? Sign up',
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
