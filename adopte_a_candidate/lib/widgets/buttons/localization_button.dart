import 'package:flutter/material.dart';


// Localization button placed at the bottom of the job card for instance.
class localizationButton extends StatelessWidget {
  const localizationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.location_on),
    );
  }
}