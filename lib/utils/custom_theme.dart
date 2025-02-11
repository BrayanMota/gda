import 'package:gda/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomThemeData {
  ThemeData themeData() {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          backgroundColor: CustomColors.authButton,
          foregroundColor: Colors.black, // Cor do texto
          textStyle: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
