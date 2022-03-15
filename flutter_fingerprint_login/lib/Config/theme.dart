// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_fingerprint_login/Config/constant.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme  = ThemeData(
  appBarTheme: appBarTheme,
  fontFamily: GoogleFonts.nunitoSans().fontFamily,
);

AppBarTheme appBarTheme = const AppBarTheme(
  elevation: 0,
  backgroundColor: Colors.transparent,
);

BoxDecoration LoginMainContainerDecoration = BoxDecoration(
  gradient: gradiant,
);

BoxDecoration LoginBtnDecoration = BoxDecoration(
  color: fontColor,
  borderRadius: BorderRadius.circular(10),
);

TextStyle LoginHeadingStyle = TextStyle(
  color: fontColor,
  fontSize: 50,
);

TextStyle LoginTextStyle = TextStyle(
  color: fontColor,
  fontSize: 20,
);

TextStyle LoginBtnTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 20,
);