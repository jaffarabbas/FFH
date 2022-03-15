import 'package:flutter/material.dart';
import 'package:flutter_fingerprint_login/Components/button.dart';
import 'package:flutter_fingerprint_login/Config/theme.dart';
import 'package:flutter_fingerprint_login/Screens/login/login_screen.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);
  void LogOut(){
    Get.to(() => LoginScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: LoginMainContainerDecoration,
        child: Center(
          child: navigationButton(text: 'LOGOUT', function: () => LogOut(),),
        ),
      ),
    );
  }
}