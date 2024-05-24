import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// This text field is build to gather basic user data when subscribing
// TODO Add the method to gather user input and keep it in memory

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    required this.title,
    required this.hinttext,
    required this.isObscure,
    required this.isEmail,
    super.key,
  });

  final TextEditingController controller;
  final String title;
  final String hinttext;
  final bool isObscure;
  final bool isEmail;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              title,
              // textAlign: TextAlign.left,
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(
              child: TextField(
                obscureText: isObscure,
                keyboardType:
                    isEmail ? TextInputType.emailAddress : TextInputType.text,
                controller: controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xDDF5F5F5),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffffd5c2),
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: hinttext,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
