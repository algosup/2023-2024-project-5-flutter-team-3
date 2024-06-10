import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Modifier button widget, that allows the user to change his information
class modifierButton extends StatelessWidget {
  const modifierButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('assets/images/pen.svg'),
          ),
        )
      ],
    );
  }
}
