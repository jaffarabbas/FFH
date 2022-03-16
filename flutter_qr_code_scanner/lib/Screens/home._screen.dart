import 'package:flutter/material.dart';
import 'package:flutter_qr_code_scanner/Screens/widgets/QRResult.dart';
import 'package:flutter_qr_code_scanner/Screens/widgets/QRViewBuilder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QrViewBuilder(),
    );
  }
}