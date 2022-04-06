// ignore_for_file: non_constant_identifier_names, nullable_type_in_catch_clause

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_qrcode_scanner/Components/button.dart';
import 'package:flutter_qrcode_scanner/Config/constant.dart';
import 'package:flutter_qrcode_scanner/Config/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String scanQr = '';
  Future<void> QrScanner() async {
    try{
      String c = await FlutterBarcodeScanner.scanBarcode('#fff', 'Back', true, ScanMode.QR);
      // _showMyDialog(scanQr.toString(), false);
      print('sa $c');
    }on PlatformException {
      _showMyDialog(barcodeScanRes, true);
    } 
  }

  Future<void> _showMyDialog(String value, bool state) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(state ? 'Error Message' : 'Qr Information'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('$value'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: QrMainContainerDecoration,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Qr Scanner',style: QrHeadingStyle),
              SizedBox(height: 50),
              // navigationButton(text: 'Click to Scane', function: QrScanner)
              ElevatedButton(onPressed: (){
                QrScanner();
              }, child: Text('scan'),),
            ],
          ),
        ),
      ),
    );
  }
}