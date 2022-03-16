import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_qr_code_scanner/Screens/widgets/QRResult.dart';
import 'package:flutter_qr_code_scanner/Services/QRService.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrViewBuilder extends StatefulWidget {
  QrViewBuilder({ Key? key }) : super(key: key);

  @override
  State<QrViewBuilder> createState() => _QrViewBuilderState();
}

class _QrViewBuilderState extends State<QrViewBuilder> {
  QRViewController? qrViewController;
  Barcode? barCode;
  @override
  void dispose() {
    qrViewController?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async{
    super.reassemble();
    if(Platform.isAndroid){
      await qrViewController!.pauseCamera();
    }
    qrViewController!.resumeCamera();
  }
  void OnQrCreated(QRViewController qrViewController){
    setState(() {
      this.qrViewController = qrViewController;
    });

    qrViewController.scannedDataStream.listen((code) { 
      setState(() {
        this.barCode = code;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        QRView(
          key: QRService.QRKey,
          onQRViewCreated: OnQrCreated,
          overlay: QrScannerOverlayShape(
            borderLength: 30,
            borderWidth: 10,
            borderRadius: 14,
            borderColor: Colors.amber,
            cutOutSize: MediaQuery.of(context).size.width * 0.8,
          ),
        ),
        Positioned(child: QRResult(result: barCode!.code.toString(), barcode: barCode))
      ],
    );
  }
}