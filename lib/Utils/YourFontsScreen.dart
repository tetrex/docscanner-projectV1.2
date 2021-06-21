import 'package:doc_scanner/Utils/FontSelectionCard.dart';
import 'package:flutter/material.dart';

//YourFontsWidget(size: size);
//var size = MediaQuery.of(context).size;

class YourFontsWidget extends StatelessWidget {
  const YourFontsWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff08182A),
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Container(
                // color: Colors.blue,
                height: 90,
                width: size.width,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        "Your Fonts",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: "Segoe UI",
                            fontStyle: FontStyle.italic),
                      ),
                    ))),
            Align(
              alignment: Alignment.center,
              child: Container(
                  height: size.height * 0.65,
                  // color: Colors.yellow,
                  child: Center(
                    child: GridView.count(
                        childAspectRatio:
                            (size.width * 0.45 / (size.height * 0.14)),
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 12.0,
                        padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          FontSelectionCard(),
                          FontSelectionCard(),
                          FontSelectionCard(),
                          FontSelectionCard(),
                          FontSelectionCard(),
                          FontSelectionCard(),
                          FontSelectionCard(),
                          FontSelectionCard(),
                        ]),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
