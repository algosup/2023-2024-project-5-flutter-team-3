import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// Tag widget for both Required Skills and Appreciated Skills
class Tag extends StatelessWidget {
  final String text;

  const Tag({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0), // Adjust the padding as needed
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF28F3B)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.josefinSans(
              textStyle: const TextStyle(
                color: Color(0xFFF28F3B),
                fontWeight: FontWeight.bold,
                fontSize: 12,
                height: 1.2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Required Skills tag
class TagRequiredSkills extends StatelessWidget {
  final String text;

  const TagRequiredSkills({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tag(text: text);
  }
}

// Appreciated Skills tag
class TagAppreciatedSkills extends StatelessWidget {
  final String text;

  const TagAppreciatedSkills({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tag(text: text);
  }
}