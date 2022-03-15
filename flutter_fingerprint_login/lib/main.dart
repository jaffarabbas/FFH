import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fingerprint_login/Config/theme.dart';
import 'package:flutter_fingerprint_login/Screens/login/login_screen.dart';
import 'package:get/get.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}