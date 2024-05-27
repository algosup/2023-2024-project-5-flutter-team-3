import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget implements PreferredSizeWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(150.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0, right: 170.0),
        child: SvgPicture.asset(
          'assets/images/LogoAdopteACandidate.svg',
          height: 150,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150.0);
}