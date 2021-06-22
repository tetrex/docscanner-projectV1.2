// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'State/State.dart';
import 'main_app.dart';
// import 'package:doc_scanner/Models/model_Index.js';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ScreenState>(
      create: (_) => ScreenState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context), // Add the locale here
        builder: DevicePreview.appBuilder,
        home: main_app(),
      ),
    );
  }
}
