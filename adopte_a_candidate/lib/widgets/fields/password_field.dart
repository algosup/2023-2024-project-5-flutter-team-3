import 'package:flutter/material.dart';

// This text field is in the log in page
// TODO Add the method to gather user input and keep it in memory
SizedBox buildTextFieldPassword({required BuildContext context, required String hinttext, required TextEditingController controller}) {
  var screenWidth = MediaQuery.of(context).size.width;
  return SizedBox(
    width: screenWidth * 0.8,
    child: TextField(
      controller: controller,
      obscureText: true,
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
  );
}