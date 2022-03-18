import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_camera/flutter_camera.dart';

class CameraScreen extends StatefulWidget {
  CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterCamera(
        color: Colors.amber,
        onImageCaptured: (value) {
          final path = value.path;
          print("::::::::::::::::::::::::::::::::: $path");
          if (path.contains('.jpg')) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Image.file(File(path)),
                  );
                });
          }
        },
        onVideoRecorded: (value) {
          final path = value.path;
          print('::::::::::::::::::::::::;; dkdkkd $path');

          ///Show video preview .mp4
        },
      ),
    );
  }
}
