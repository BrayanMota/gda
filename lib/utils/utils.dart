import 'package:flutter/material.dart';
import 'package:gda/utils/custom_colors.dart';

class Utils {
  static BoxDecoration authBackground() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          CustomColors.secondaryBackground,
          CustomColors.primaryBackground,
          CustomColors.primaryBackground,
        ],
        stops: [
          0.13, // Primeira transição
          0.23, // Suavização entre as cores
          1.0, // Finaliza no primaryBackground
        ],
      ),
    );
  }
}
