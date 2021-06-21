import 'package:doc_scanner/State/State.dart';
import 'package:doc_scanner/Widgets/NavBar/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Widgets/NavBar/NavBar.dart';

// ignore: camel_case_types
class main_app extends StatefulWidget {
  @override
  _main_appState createState() => _main_appState();
}

// ignore: camel_case_types
class _main_appState extends State<main_app> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(8, 24, 42, 1),
        body: Stack(
          // height: MediaQuery.of(context).size.height,
          children: [
            Container(
                color: Color(0xff08182A),
                height: size.height,
                width: size.width,
                child: Consumer<ScreenState>(
                  builder: (context, screen, child) => (screen.element),
                )),
            Positioned(
              bottom: 0,
              child: Container(
                  // color: Colors.lightBlue[400],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0.23,
                  child: NavBar()),
            ),
          ],
        ),
      ),
    );
  }
}
