import 'package:e_commerce/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static const Color whiteColor = Color(0xffFFFFFF);

  static const Color greyColor = Color(0xffA8A8A9);

  static const Color blackColor = Color(0xff000000);

  static const Color redColor = Color(0xffF83758);

  static const Color greyColor2 = Color(0xffC4C4C4);

  static const Color darkgreyColor = Color(0xff575757);

  //static const Color redColor2 = Color(0xffF83758);

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
      fontSize: 18.sp, fontWeight: FontWeight.bold, color: greyColor2));

  static TextStyle signinAppBar = googleFontStyle(TextStyle(
      fontSize: 36.sp, fontWeight: FontWeight.bold, color: blackColor));

  static TextStyle signinForgotPass =
      googleFontStyle(TextStyle(fontSize: 12.sp, color: redColor));

  static TextStyle signinbuttonAll = googleFontStyle(TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.w500, color: whiteColor));

  static TextStyle signinOrContinue = googleFontStyle(TextStyle(
      fontSize: 12.sp, fontWeight: FontWeight.w400, color: darkgreyColor));

  static TextStyle signinCreateAnAccount =
      googleFontStyle(TextStyle(fontSize: 14.sp, color: darkgreyColor));

  static TextStyle signinCreateAnAccount2 = googleFontStyle(TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: redColor,
      decoration: TextDecoration.underline,
      decorationColor: redColor));
}
