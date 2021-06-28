import 'package:flutter/material.dart';

class ActiveScannerScreen extends StatefulWidget {
  const ActiveScannerScreen({ Key? key }) : super(key: key);

  @override
  _ActiveScannerScreenState createState() => _ActiveScannerScreenState();
}

class _ActiveScannerScreenState extends State<ActiveScannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow,
child: Text("Scanner khulega"),
      ),
    );
  }
}