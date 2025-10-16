import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstFonts {
  final TextStyle _primaryFont = GoogleFonts.raleway();

  TextStyle getPrimaryFont({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return _primaryFont.copyWith(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
