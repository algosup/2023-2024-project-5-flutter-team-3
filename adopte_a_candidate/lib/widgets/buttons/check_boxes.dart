import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

// This method builds a Round Check Box, eg, for pages/sign_up.dart
Widget buildRoundCheckBox({
  required bool isChecked,
  required void Function(bool?) onChanged,
  required Color borderColor,
  required Color checkedColor,
  required Color uncheckedColor,
  required double size,
}) {
  return RoundCheckBox(
    isChecked: isChecked,
    onTap: onChanged,
    borderColor: borderColor,
    checkedColor: checkedColor,
    uncheckedColor: uncheckedColor,
    size: size,
  );
}
