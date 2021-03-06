import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/WhatsAppHome.dart';
import 'package:camera/camera.dart';
import 'dart:async';

List<CameraDescription> cameras;

Future<Null> main() async {
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366)
      ),
      home: WhatsAppHome(cameras),
      debugShowCheckedModeBanner: false,
    );
  }
}