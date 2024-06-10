import 'package:flutter/material.dart';

// swipe card

// chat card

// Card line

// Horizontal line, to separate elements
class CardLineHorizontal extends StatelessWidget {
  const CardLineHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              strokeAlign: BorderSide.strokeAlignCenter,
            ),
          ),
        ),
      ),
    );
  }
}

// Vertical line present below the card in the swipe page to seperate both check and cross buttons
class CardLineVertical extends StatelessWidget {
  const CardLineVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              strokeAlign: BorderSide.strokeAlignCenter,
            ),
          ),
        ),
      ),
    );
  }
}
