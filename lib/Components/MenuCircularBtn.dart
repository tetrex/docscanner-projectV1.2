import 'package:flutter/material.dart';

class MenuCircularBtn extends StatelessWidget {
  const MenuCircularBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset("assets/scanner.png"),
    );
  }
}
