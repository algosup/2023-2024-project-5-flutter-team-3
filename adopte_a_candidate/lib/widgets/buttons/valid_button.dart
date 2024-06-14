import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Modifier button widget, that allows the user to change his information
class ValidButton extends StatelessWidget {
  final VoidCallback onTap;

  const ValidButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset(
              'assets/images/check-circle.svg',
              height: 30,
              width: 30,
            ),
          ),
        )
      ],
    );
  }
}
