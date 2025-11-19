import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeText {
  static TextStyle headH4Medium({Color? color}) => GoogleFonts.inter(fontWeight: FontWeight.w400, color: color, fontSize: 28);
  static TextStyle bodyLMedium({Color? color}) => GoogleFonts.inter(fontWeight: FontWeight.w500, color: color, fontSize: 16);
  static TextStyle bodyLRegular({Color? color}) => GoogleFonts.inter(fontWeight: FontWeight.w400, color: color, fontSize: 16);
  static TextStyle bodyNormalMedium({Color? color}) => GoogleFonts.inter(fontWeight: FontWeight.w500, color: color, fontSize: 14);
  static TextStyle bodyNormalRegular({Color? color}) => GoogleFonts.inter(fontWeight: FontWeight.w400, color: color, fontSize: 14);
  static TextStyle bodySMRegular({Color? color}) => GoogleFonts.inter(fontWeight: FontWeight.w400, color: color, fontSize: 12);
}
