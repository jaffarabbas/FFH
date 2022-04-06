// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_qrcode_scanner/Config/constant.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme  = ThemeData(
  appBarTheme: appBarTheme,
  fontFamily: GoogleFonts.nunitoSans().fontFamily,
);

AppBarTheme appBarTheme = const AppBarTheme(
  elevation: 0,
  backgroundColor: Colors.transparent,
);

BoxDecoration QrMainContainerDecoration = BoxDecoration(
  gradient: gradiant,
);

BoxDecoration QrBtnDecoration = BoxDecoration(
  color: fontColor,
  borderRadius: BorderRadius.circular(10),
);

TextStyle QrHeadingStyle = TextStyle(
  color: fontColor,
  fontSize: 50,
);

TextStyle QrTextStyle = TextStyle(
  color: fontColor,
  fontSize: 20,
);

TextStyle QrBtnTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 20,
);