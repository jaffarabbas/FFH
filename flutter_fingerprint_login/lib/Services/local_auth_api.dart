import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fingerprint_login/Components/dilogBox.dart';
import 'package:flutter_fingerprint_login/Screens/login/login_screen.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthApi {
  static final _auth = LocalAuthentication();

  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      return false;
    }
  }

  static Future<bool?> authenticateBioMatric(BuildContext context) async {
    final isAvailable = await hasBiometrics();
    if (!isAvailable) return false;

    try {
      return await _auth.authenticate(
        biometricOnly: true,
        localizedReason: 'Scan Fingerprint to Authenticate',
        useErrorDialogs: true,
        stickyAuth: true,
        sensitiveTransaction: true,
      );
    } on PlatformException catch (e) {
      Dilog.showMyDialog(context, e.toString(), LoginScreen());
    }
  }
}
