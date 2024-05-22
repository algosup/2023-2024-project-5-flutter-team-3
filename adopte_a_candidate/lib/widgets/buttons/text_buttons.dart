import 'package:flutter/material.dart';

// This button is contained on the Login page
/* TODO Check if credentials are correct and send the user to the menu page, depending on whether the user is a company or a job seeker
*/
ElevatedButton buildElevatedButton({required String buttonText, required Null Function() onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xffffd5c2), // Text color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    ),
    child: Text(
      buttonText,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}