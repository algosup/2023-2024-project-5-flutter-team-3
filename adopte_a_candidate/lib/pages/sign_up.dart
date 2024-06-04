// Flutter base packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  Widget SignUpPage() {
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
                          title: AppLocalizations.of(context)!.name,
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
                          title: AppLocalizations.of(context)!.email,
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
                        title: AppLocalizations.of(context)!.password,
                        hinttext: 'Enter your password',
                        width: MediaQuery.of(context).size.width - 80,
                        heigth: 108,
                        isObscure: true,
                        showToggle: true,
                        isEmail: false,
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
                        isEmail: false,
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
    return SignUpPage();
  }
}
