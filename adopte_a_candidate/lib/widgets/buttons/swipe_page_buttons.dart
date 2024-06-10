import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:adopte_a_candidate/widgets/card/card.dart';


class buttonsSwipePage extends StatelessWidget {
  const buttonsSwipePage({
    super.key,
    required bool isDragging,
  }) : _isDragging = isDragging;

  final bool _isDragging;

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
                    onTap: () {
                      print('deny offer');
                    },
                    child: SvgPicture.asset(
                        'assets/images/close-circle.svg'),
                  ),
                  const CardLineVertical(),
                  GestureDetector(
                    onTap: () {
                      print('accept offer');
                    },
                    child: SvgPicture.asset(
                        'assets/images/check-circle.svg'),
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