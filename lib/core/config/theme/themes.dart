import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_burger/core/config/theme/style.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Lato',
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(color: Color(0xffF6F6FA)),
  primaryColor: kRed,
  primaryColorBrightness: Brightness.light,
  accentColor: const Color(0xffCBAB97),
  backgroundColor: const Color(0xffF6F6FA),
  scaffoldBackgroundColor: kBackgroundColor,
  cardColor: const Color(0xffFFFFFF),
  buttonColor: const Color(0xff333333),
  focusColor: kRed,
  primaryIconTheme: const IconThemeData(color: kRed),
  bottomAppBarColor: const Color(0xffCBAB97),
  cupertinoOverrideTheme: const CupertinoThemeData(
    barBackgroundColor: Color(0xffECECEF),
  ),
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'Lato',
  brightness: Brightness.dark,
  primaryColorBrightness: Brightness.dark,
  backgroundColor: kRed,
  scaffoldBackgroundColor: kRed,
  accentColor: const Color(0xffCBAB97),
  cardColor: kRed,
  primaryIconTheme: const IconThemeData(color: Color(0xffF6F6FA)),
  bottomSheetTheme: const BottomSheetThemeData(modalBackgroundColor: kRed),
  buttonColor: const Color(0xffF6F6FA),
  focusColor: const Color(0xffCBAB97),
  cupertinoOverrideTheme: const CupertinoThemeData(
    barBackgroundColor: kRed,
  ),
);

TextTheme textTheme = const TextTheme(
  headline1: TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xffCBAB97)),
  headline2: TextStyle(
      fontSize: 20, color: Color(0xffCBAB97), fontWeight: FontWeight.w600),
  bodyText2: TextStyle(fontSize: 14.0),
);
