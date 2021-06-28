import 'package:doc_scanner/Components/NewDocPopUpCard.dart';
import 'package:doc_scanner/Components/PreviewCard.dart';
import 'package:doc_scanner/State/State.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'SerchBar.dart';

class DocGallary extends StatelessWidget {
  const DocGallary({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;



  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return (Consumer<ScreenState>(
      builder: (context, screen, child) => Container(
      color: Color(0xff08182A),
      // margin: EdgeInsets.only(top: size.height * (1.8 / 17)),
      height: size.height * (5 / 12),
      width: size.width,
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      screen.index = 0;
                      screen.stateSelector();
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.keyboard_backspace_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),

                Spacer(),
                SearchBar(searchController: searchController)
              ],
            ),
            height: size.width * 0.15,
            // color: Colors.greenAccent,
            width: size.width,
          ),
          Expanded(
            child: Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Container(
                        decoration: BoxDecoration(
                          // boxShadow: [
                            //   BoxShadow(color: Colors.green, spreadRadius: 8)
                            // ],
                          color: Color.fromRGBO(15, 50, 84, 0.5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(28),
                              topRight: Radius.circular(28)),
                        ),
                        height: size.height,
                        child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                child: Center(
                                  child: Text(
                                    screen.docCardName[screen.gallaryIndex],
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                    child: Container(
                                  width: size.width,
                                  height: size.height,
                                  // color: Colors.limeAccent,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                        left: 8.0,
                                        right: 8.0,
                                        bottom: 60),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: GridView.count(
                                        childAspectRatio: 0.8,
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 12.0,
                                        mainAxisSpacing: 12.0,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                builder:
                                                      (BuildContext context) {
                                                    return NewDOcPopUpCard();
                                                  });
                                            },
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              elevation: 8,
                                              child: Center(
                                                child: Icon(
                                                  Icons.add_circle_outline,
                                                  size: 40,
                                                  color: Colors.grey.shade700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          PreviewCard(
                                          imagePath: Image.asset(
                                                "assets/docImage.png"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                            ),
                            ],
                        )))),
          ),
        ],
      ),
    ),
    )
    );
  }
}
