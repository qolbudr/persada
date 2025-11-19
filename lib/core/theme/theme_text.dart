import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeText {
  static TextStyle bodyLMedium({Color? color}) => GoogleFonts.inter(fontWeight: FontWeight.w500, color: color, fontSize: 16);
  static TextStyle bodyLRegular({Color? color}) => GoogleFonts.inter(fontWeight: FontWeight.w400, color: color, fontSize: 16);
}
