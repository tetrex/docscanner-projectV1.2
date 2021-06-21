import 'package:doc_scanner/Components/DocGallary.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

//  Color(0xff08182A)
class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: DocGallary(size: size),
    );
  }
}
