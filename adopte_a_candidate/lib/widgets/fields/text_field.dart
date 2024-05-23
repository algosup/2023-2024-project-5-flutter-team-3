import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// Use camel case


// This text field is in the log in page
// TODO Add the method to gather user input and keep it in memory
SizedBox buildTextFieldPassword({required BuildContext context, required String hinttext, required TextEditingController controller}) {
  var screenWidth = MediaQuery.of(context).size.width;
  return SizedBox(
    width: screenWidth * 0.8,
    child: TextField(
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
  );
}


// This text field is build to gather basic user data when subscribing
// TODO Add the method to gather user input and keep it in memory
SizedBox buildTextField({required BuildContext context,required TextEditingController controller, required String hinttext}) {
  var screenWidth = MediaQuery.of(context).size.width;
  FocusNode _focusNode = FocusNode();
  return SizedBox(
    width: screenWidth * 0.8,
    child: TextField(
      focusNode: _focusNode,
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
  );
}


// Localization field

// Tag field (soft skills)

// select field drag down menu basically
