import 'package:adopte_a_candidate/widgets/buttons/big_buttons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/buttons/text_buttons.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Logo(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                'Forgot Password',
                style: GoogleFonts.josefinSans(
                  textStyle: const TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _emailController,
                title: 'Email',
                hintText: 'Enter your email',
                isObscure: false,
                isEmail: true,
                showToggle: false,
                width: MediaQuery.of(context).size.width - 32,
                height: 108,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _passwordController,
                title: 'New Password',
                hintText: 'Enter your new password',
                isObscure: true,
                isEmail: false,
                showToggle: true,
                width: MediaQuery.of(context).size.width - 32,
                height: 108,
              ),
              const SizedBox(height: 30),
              const Center(
                  child: BigButton(
                      text: 'Reset Password',
                      width: 200,
                      height: 50,
                      textWidth: 12,
                      pageName: 'log_in'
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
