import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static TextStyle w400s15Ubuntu = GoogleFonts.ubuntu().copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
    height: 18 / 15,
    textBaseline: TextBaseline.alphabetic,
    decoration: TextDecoration.none,
  );

  static TextStyle w400s16Ubuntu = GoogleFonts.ubuntu().copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    height: 1.3,
    textBaseline: TextBaseline.alphabetic,
    decoration: TextDecoration.none,
  );

  static TextStyle w400s17Ubuntu = GoogleFonts.ubuntu().copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 17.47.sp,
    height: 1.3,
    letterSpacing: -0.01,
    textBaseline: TextBaseline.alphabetic,
    decoration: TextDecoration.none,
  );

  static TextStyle w500s13Ubuntu = GoogleFonts.ubuntu().copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 13.31.sp,
    height: 1.3,
    letterSpacing: -0.01,
    textBaseline: TextBaseline.alphabetic,
    decoration: TextDecoration.none,
  );

  static TextStyle w500s14 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    height: 1.3,
    textBaseline: TextBaseline.alphabetic,
    decoration: TextDecoration.none,
  );

  static TextStyle w500s15Ubuntu = GoogleFonts.ubuntu().copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 15.sp,
    height: 1.3,
    textBaseline: TextBaseline.alphabetic,
    decoration: TextDecoration.none,
  );

  static TextStyle w500s19Ubuntu = GoogleFonts.ubuntu().copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 19.sp,
    height: 1.3,
    letterSpacing: -0.01.sp,
    textBaseline: TextBaseline.alphabetic,
    decoration: TextDecoration.none,
  );

  static TextStyle w500s28 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 28.sp,
    height: 1.1,
    textBaseline: TextBaseline.alphabetic,
    letterSpacing: -0.01.sp,
    decoration: TextDecoration.none,
  );

  static TextStyle w500s59Ubuntu = GoogleFonts.ubuntu().copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 59.27.sp,
    height: 1.3,
    textBaseline: TextBaseline.alphabetic,
    letterSpacing: -0.01.sp,
    decoration: TextDecoration.none,
  );
}
