import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTextStyle() {
    return GoogleFonts.signikaNegative(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle montserratStyle({
    required Color color,
  }) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: 24.0,
    );
  }

  static TextStyle headingStyles({
    double fontSize = 36.0,
    Color color = Colors.white,
  }) {
    return GoogleFonts.rubikMonoOne(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
      letterSpacing: 2.0,
    );
  }

  static TextStyle normalStayle() {
    return GoogleFonts.signikaNegative(
        fontSize: 17.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        letterSpacing: 1.5);
  }
}
