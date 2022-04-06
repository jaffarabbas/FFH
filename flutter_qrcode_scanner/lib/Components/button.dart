import 'package:flutter/material.dart';
import 'package:flutter_qrcode_scanner/Config/theme.dart';

class navigationButton extends StatelessWidget {
  String text;
  Function function;
  navigationButton({Key? key, required this.text,required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        function();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        decoration: QrBtnDecoration,
        child: Text(
          text,
          style: QrBtnTextStyle,
        ),
      ),
    );
  }
}
