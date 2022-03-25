import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String scanQr = '';
  Future<void> QrScanner() async {
    try{
      scanQr = await FlutterBarcodeScanner.scanBarcode('#fff', 'Back', true, ScanMode.QR);
    } on Exception catch (_, e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}