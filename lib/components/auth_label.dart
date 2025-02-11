import 'package:flutter/material.dart';
import 'package:gda/utils/custom_colors.dart';
import 'package:gda/utils/custom_sizes.dart';

class AuthLabel extends StatelessWidget {
  final String label;

  const AuthLabel({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: CustomSizes.authLabel,
        fontWeight: FontWeight.bold,
        color: CustomColors.authLabelButton,
      ),
    );
  }
}
