import 'package:e_commerce/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static const Color whiteColor = Color(0xffFFFFFF);

  static const Color greyColor = Color(0xffA8A8A9);

  static const Color blackColor = Color(0xff000000);

  static const Color redColor = Color(0xffF83758);

  static const Color anotherGreyColor = Color(0xffC4C4C4);

  //taking google fonts as String
  static const String fontStyle = 'Montserrat';

  // a function for making the same googlefont style to all TextStyle when used
  static TextStyle googleFontStyle(TextStyle baseStyle) {
    return GoogleFonts.getFont(fontStyle, textStyle: baseStyle);
  }

  //TextStyle for the Intro Screens
  static TextStyle titleStyle = googleFontStyle(TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.bold, color: blackColor));

  static TextStyle descripStyle = googleFontStyle(TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.w500, color: greyColor));

  static TextStyle introNext = googleFontStyle(
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500, color: redColor));
  static TextStyle introSkip = googleFontStyle(TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.bold, color: blackColor));

  static TextStyle introIndex = googleFontStyle(TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.bold, color: blackColor));

  static TextStyle introPrevious = googleFontStyle(TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.bold, color: anotherGreyColor));

  static TextStyle signinAppBar = googleFontStyle(TextStyle(
      fontSize: 36.sp, fontWeight: FontWeight.bold, color: blackColor));
}
