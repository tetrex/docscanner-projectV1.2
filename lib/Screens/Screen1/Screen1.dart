import 'package:doc_scanner/Components/NewDocPopUpCard.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff08182A),
      child: Center(
        child: NewDOcPopUpCard(),
      ),
    );
  }
}
