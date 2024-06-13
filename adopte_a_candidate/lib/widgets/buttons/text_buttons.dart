import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

// This button is contained on the Login page
/* TODO Check if credentials are correct and send the user to the menu page, depending on whether the user is a company or a job seeker
*/
class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {required this.text,
      required this.textWidth,
      required this.pageName,
      this.minWidth = 50,
      this.maxWidth = 200,
      this.minHeight = 50,
      this.maxHeight = 100,
      super.key});

  final String text;
  final String pageName;
  final double textWidth;
  final double minWidth;
  final double maxWidth;
  final double minHeight;
  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: minWidth,
          maxWidth: maxWidth,
          minHeight: minHeight,
          maxHeight: maxHeight,
        ),
        child: TextButton(
          onPressed: () {
            context.goNamed(pageName);
          },
          child: AutoSizeText(
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
