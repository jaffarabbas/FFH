// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_fingerprint_login/Components/button.dart';
import 'package:flutter_fingerprint_login/Config/constant.dart';
import 'package:flutter_fingerprint_login/Config/theme.dart';
import 'package:flutter_fingerprint_login/Screens/home/home_page.dart';
import 'package:flutter_fingerprint_login/Services/local_auth_api.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  late bool isAuthentecated;
  @override
  Widget build(BuildContext context) {
  void LoginUser() async{
    isAuthentecated = (await LocalAuthApi.authenticateBioMatric(context))!;
    if(isAuthentecated){
      Get.off(const Homepage());
    }
  }
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: LoginMainContainerDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.fingerprint_rounded,
              size: 100,
              color: fontColor,
            ),
            const SizedBox(height: 25),
            Text(
              'LOGIN',
              style: LoginHeadingStyle,
            ),
            const SizedBox(height: 30),
            Text(
              'Please Verify Your identity',
              style: LoginTextStyle,
            ),
            Text(
              'By Fingre Print',
              style: LoginTextStyle,
            ),
            const SizedBox(height: 30),
            navigationButton(text: "AUTHENTICATE", function: () => LoginUser())
          ],
        ),
      ),
    );
  }
}
