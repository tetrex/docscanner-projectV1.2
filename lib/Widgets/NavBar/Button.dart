import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Color(0xff44C4D2), Color(0xff154DA2)]),
        ),
        // height: 60,
        // width: 60,
        // color: Colors.amber[400],
        child: Center(
          child: GestureDetector(
            onTap: () => {print("tap")},
            child: Icon(
              Icons.add,
              size: 45,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
