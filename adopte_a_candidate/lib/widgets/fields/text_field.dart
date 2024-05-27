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
    required this.width,
    required this.heigth,
    super.key,
  });

  final TextEditingController controller;
  final String title;
  final String hinttext;
  final bool isObscure;
  final bool isEmail;
  final double width;
  final double heigth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: heigth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 5.0, top: 10.0),
            child: Text(
              title,
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ), // Add some spacing between the title and the text field
          TextField(
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
        ],
      ),
    );
  }
}
