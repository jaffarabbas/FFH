import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRResult extends StatelessWidget {
  String result;
  Barcode? barcode;
  QRResult({
    Key? key,
    required this.result,
    required this.barcode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Text(
        barcode != null ? 'Result : ${result}' : 'Scan QR Code'
      ),
    );
  }
}
