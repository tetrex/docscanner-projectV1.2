import 'package:flutter/material.dart';

class FontSelectionCard extends StatelessWidget {
  const FontSelectionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 200,
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Center(child: Text("TextHere")),
    );
  }
}
