import 'package:flutter/material.dart';

// swipe card

// chat card

// Card line

class CardLine extends StatelessWidget {
  const CardLine({super.key});

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
