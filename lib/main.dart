// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Models/State.dart';
import 'main_app.dart';
// import 'package:doc_scanner/Models/model_Index.js';

void main() {
  runApp(
    MyApp(),
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
          home: main_app(),
        ));
  }
}
