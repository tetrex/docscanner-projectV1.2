import 'package:flutter/material.dart';

class PreviewCard extends StatelessWidget {
  const PreviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 170,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Image.asset("assets/docImage.png"),
    );
  }
}
