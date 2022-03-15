import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dilog {
  static Future<void> showMyDialog(
      BuildContext context, String value, Widget popWidgit) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error Message'),
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
                Get.off(popWidgit);
              },
            ),
          ],
        );
      },
    );
  }
}
