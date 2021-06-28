import 'package:doc_scanner/State/State.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocCard extends StatelessWidget {
  const DocCard({
    Key? key,
    required this.screenStateIndex,
    required this.gallaryIndexValue,
    required this.docCardName,
    // ignore: non_constant_identifier_names
    required this.Message,
  }) : super(key: key);
  final int screenStateIndex;
  final String docCardName;
  final int gallaryIndexValue;
  // ignore: non_constant_identifier_names
  final String Message;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<ScreenState>(
      builder: (context, screen, child) => GestureDetector(
        onTap: () {
          screen.index = screenStateIndex;
          screen.gallaryIndex = gallaryIndexValue;
          screen.selectGallary();
          print("${screen.gallaryIndex} is the gallary index");
          screen.stateSelector();
        },
        child: Container(
          height: size.width * 0.7,
          width: size.width * 0.45,
          decoration: BoxDecoration(
            color: Color(0xff3D4A5C),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: size.width * 0.2,
                  width: size.width * 0.2,
                  child: Image.asset("assets/folder.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),

                      Container(
                        child: Text(
                          docCardName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: "Segoe UI"),
                        ),
                      ),
                      // ),
                      Container(
                        child: Text(
                          Message,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontFamily: "Segoe UI"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
