import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// This button is contained on the Login page
/* TODO Check if credentials are correct and send the user to the menu page, depending on whether the user is a company or a job seeker
*/
class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {required this.text,
      required this.textWidth,
      required this.pageName,
      super.key});

  final String text;
  final String pageName;
  final double textWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: TextButton(
      onPressed: () {
        context.goNamed(pageName);
      },
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.josefinSans(
          textStyle: TextStyle(
              color: Colors.black,
              fontSize: textWidth,
              decoration: TextDecoration.underline),
        ),
      ),
    ));
  }
}
