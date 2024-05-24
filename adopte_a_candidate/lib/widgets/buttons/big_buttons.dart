import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// This button is contained on the Login page
/* TODO Check if credentials are correct and send the user to the menu page, depending on whether the user is a company or a job seeker
*/
class BigButton extends StatelessWidget {
  const BigButton(
      {required this.text,
      required this.width,
      required this.heigth,
      required this.textWidth,
      required this.pageName,
      super.key});

  final String text;
  final String pageName;
  final double width;
  final double heigth;
  final double textWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: heigth,
      child: ElevatedButton(
        onPressed: () {
          context.goNamed(pageName);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 213, 194),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              textStyle: TextStyle(color: Colors.black, fontSize: textWidth),
            ),
          ),
        ),
      ),
    );
  }
}
