// Flutter base packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Custom widgets
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/buttons/text_buttons.dart';
import 'package:adopte_a_candidate/widgets/buttons/big_buttons.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';

// Custom controllers
import 'package:adopte_a_candidate/services/signup/signup_controller.dart';

// This is the login page of the app
class LogIn extends StatelessWidget {
  const LogIn({Key? key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    return Scaffold(
      appBar: const Logo(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                children: <Widget>[
                  CustomTextField(
                    controller: controller.email,
                    title: AppLocalizations.of(context)?.email ??
                        'Email', // Use localization or fallback to 'Email'
                    hintText: AppLocalizations.of(context)?.enteremail ??
                        'Enter Email', // Use localization or fallback to 'Enter Email'
                    width: MediaQuery.of(context).size.width - 80,
                    height: 108,
                    isObscure: false,
                    showToggle: false,
                    isEmail: true,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: controller.password,
                    title: AppLocalizations.of(context)?.password ??
                        'Password', // Use localization or fallback to 'Password'
                    hintText: AppLocalizations.of(context)?.enterpassword ??
                        'Enter Password', // Use localization or fallback to 'Enter Password'
                    width: MediaQuery.of(context).size.width - 80,
                    height: 108,
                    isObscure: true,
                    showToggle: true,
                    isEmail: false,
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextButton(
                        text: 'Forgot Password ?', // Hardcoded string
                        textWidth: 12,
                        pageName: 'home',
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: BigButton(
                          text: AppLocalizations.of(context)?.login ??
                              'Login', // Use localization or fallback to 'Login'
                          width: 200,
                          height: 50,
                          textWidth: 16,
                          pageName: 'swipe',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: CustomTextButton(
                          text: AppLocalizations.of(context)?.noaccount ??
                              'No Account', // Use localization or fallback to 'No Account'
                          textWidth: 12,
                          pageName: 'home',
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
    );
  }
}
