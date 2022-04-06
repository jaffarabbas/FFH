import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


Color primaryColor = const Color(0xFF141e30);
Color secondaryColor = const Color(0xFF243b55);
Color fontColor = Colors.amberAccent;

LinearGradient gradiant = LinearGradient(
  colors: [
    primaryColor,
    secondaryColor
  ]
);

String barcodeScanRes = 'Failed to get platform version.';