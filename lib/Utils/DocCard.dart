import 'package:flutter/material.dart';

class DocCard extends StatelessWidget {
  const DocCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159,
      width: 282,
      decoration: BoxDecoration(
        color: Color(0xff3D4A5C),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 126,
              width: 126,
              child: Image.asset("assets/folder.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Container(
                    child: Text(
                      "My docs",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: "Segoe UI"),
                    ),
                  ),
                  Container(
                    child: Text(
                      "14 June,2021",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontFamily: "Segoe UI"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
