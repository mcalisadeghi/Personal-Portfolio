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

  static TextStyle montserratStyle() {
    return GoogleFonts.montserrat(
      color: Colors.white,
      fontWeight: FontWeight.w800,
      fontSize: 24.0,
    );
  }

  static TextStyle headingStyles() {
    return GoogleFonts.rubikMonoOne(
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 2.0,
    );
  }
}
