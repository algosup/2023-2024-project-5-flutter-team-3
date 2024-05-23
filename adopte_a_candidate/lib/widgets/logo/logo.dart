import 'package:flutter_svg/svg.dart';

SvgPicture buildLogo(double screenWidth, double screenHeight) {
  return SvgPicture.asset(
    'assets/images/LogoAdopteACandidate.svg',
    semanticsLabel: 'Logo',
    width: screenWidth * 0.5,
    height: screenHeight * 0.15,
  );
}
