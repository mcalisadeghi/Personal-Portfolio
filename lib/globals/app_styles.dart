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

// https://www.youtube.com/watch?v=Ag_sdnSZolA
  static TextStyle montserratStyle() {
    return GoogleFonts.montserrat(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 24.0,
    );
  }
}
