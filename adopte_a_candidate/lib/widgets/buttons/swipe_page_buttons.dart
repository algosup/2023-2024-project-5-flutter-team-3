import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../card/cards.dart';


class buttonsSwipePage extends StatelessWidget {
  const buttonsSwipePage({
    Key? key,
    required bool isDragging,
    required this.onAccept,
    required this.onDeny,
  })  : _isDragging = isDragging,
        super(key: key);

  final bool _isDragging;
  final VoidCallback onAccept;
  final VoidCallback onDeny;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !_isDragging,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: onDeny,
                    child: SvgPicture.asset('assets/images/close-circle.svg'),
                  ),
                  const CardLineVertical(),
                  GestureDetector(
                    onTap: onAccept,
                    child: SvgPicture.asset('assets/images/check-circle.svg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}