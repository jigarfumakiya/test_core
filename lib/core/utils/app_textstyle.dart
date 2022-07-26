import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_core/core/utils/screen_utils.dart';

import 'app_colors.dart';

class AppTextStyles {
  //? Common widget text styles
  static TextStyle hintTextStyle() => GoogleFonts.roboto(
        color: AppColors.textHintColor,
        fontWeight: FontWeight.bold,
        fontSize: 15.sp,
        letterSpacing: -0.02,
      );

  //? White text styles
  static TextStyle whiteBoldTextStyle10() => GoogleFonts.roboto(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10.sp);

  static TextStyle whiteBoldTextStyle12() => GoogleFonts.roboto(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.sp);

  static TextStyle whiteBoldTextStyle14() => GoogleFonts.roboto(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.sp);

  //? black text styles
  static TextStyle blackBoldTextStyle24() => GoogleFonts.roboto(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.sp);

  static TextStyle blackBoldTextStyle12() => GoogleFonts.roboto(
      color: AppColors.iconColor, fontWeight: FontWeight.bold, fontSize: 12.sp);

  static TextStyle blackBoldTextStyle14() => GoogleFonts.roboto(
      color: AppColors.iconColor, fontWeight: FontWeight.bold, fontSize: 14.sp);

  static TextStyle blackBoldTextStyle13Light() => GoogleFonts.roboto(
      color: Colors.black, fontWeight: FontWeight.w300, fontSize: 13.sp);

  static TextStyle blackTextStyle15() =>
      GoogleFonts.roboto(color: Colors.black, fontSize: 15.sp);

  static TextStyle blackTextStyle14() =>
      GoogleFonts.roboto(color: Colors.black, fontSize: 14.sp);

  static TextStyle blackBoldTextStyle11() => GoogleFonts.roboto(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 11.sp);

  static TextStyle blackBoldTextStyle13() => GoogleFonts.roboto(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 13.sp);

  static TextStyle blackBoldTextStyle13Underline() => GoogleFonts.roboto(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
      fontSize: 13.sp);
}
