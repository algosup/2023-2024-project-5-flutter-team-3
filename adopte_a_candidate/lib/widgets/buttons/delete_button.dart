import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class DeleteButton extends StatelessWidget {
  const DeleteButton(
      {required this.text,
      required this.width,
      required this.height,
      required this.textWidth,
      required this.onPressed,
      super.key});

  final String text;
  final double width;
  final double height;
  final double textWidth;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 198, 84, 61),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              textStyle: TextStyle(color: Colors.white, fontSize: textWidth),
            ),
          ),
        ),
      ),
    );
  }
}
