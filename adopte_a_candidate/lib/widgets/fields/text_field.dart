import 'package:flutter/material.dart';

// Use camel case

// This text field is in the log in page
// TODO Add the method to gather user input and keep it in memory
TextField buildTextFieldPassword() {
  return const TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Color(0xDDF5F5F5),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffffd5c2),
          width: 2.5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      hintText: 'Enter votre mot de passe',
    ),
  );
}

// This text field is in the login page, it builds the email text field
// TODO Add the method to gather user input and keep it in memory
TextField buildTextFieldMail() {
  return const TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Color(0xDDF5F5F5),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffffd5c2),
          width: 2.5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      hintText: 'Entrez votre e-mail',
    ),
  );
}
