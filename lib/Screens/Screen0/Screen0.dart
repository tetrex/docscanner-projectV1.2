import 'package:doc_scanner/Components/DocCard.dart';
import 'package:doc_scanner/Components/PreviewCard.dart';
import 'package:doc_scanner/Components/SerchBar.dart';
import 'package:flutter/material.dart';

class Screen0 extends StatefulWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  _Screen0State createState() => _Screen0State();
}

// class _Screen0State extends State<Screen0> {
//   final searchController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Container(
//         decoration: BoxDecoration(
//           color: Color(0xff08182A),
//         ),
//         child: SingleChildScrollView(
//           physics: NeverScrollableScrollPhysics(),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(height: 55),
//               Container(
//                 child: SearchBar(searchController: searchController),
//               ),
//               SizedBox(height: 28),
//               Container(
//                 child: Row(
//                   children: [
//                     SizedBox(width: 39),
//                     Container(
//                       child: Text(
//                         "Hello Harsh!",
//                         style: TextStyle(
//                             fontFamily: "Poppins",
//                             fontSize: 30,
//                             color: Colors.white),
//                       ),
//                     ),
//                     Spacer(),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 52),
//               Container(
//                 child: Row(
//                   children: [
//                     SizedBox(width: 40),
//                     Container(
//                       child: Text(
//                         "Recent Folders",
//                         style: TextStyle(
//                           fontFamily: "Segoe UI",
//                           fontSize: 24,
//                           color: Colors.white54,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               Container(
//                 height: 159,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   padding: EdgeInsets.only(left: 12, right: 12),
//                   children: [
//                     DocCard(screenStateIndex: 2),
//                     SizedBox(width: 12),
//                     DocCard(screenStateIndex: 1),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 36),
//               Container(
//                 child: Row(
//                   children: [
//                     SizedBox(width: 40),
//                     Container(
//                       child: Text(
//                         "Recent documents",
//                         style: TextStyle(
//                           fontFamily: "Poppins",
//                           fontSize: 18,
//                           color: Colors.white54,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10),
//                 child: Container(
//                   height: 285,
//                   child: GridView.count(
//                       childAspectRatio: 0.9,
//                       crossAxisCount: 2,
//                       crossAxisSpacing: 10,
//                       mainAxisSpacing: 8.0,
//                       padding: EdgeInsets.only(right: 20, left: 20, top: 8),
//                       children: [
//                         Center(
//                             child: PreviewCard(
//                           imagePath: Image.asset("assets/folder.png"),
//                         )),
//                         Center(
//                             child: PreviewCard(
//                           imagePath: Image.asset("assets/scanner.png"),
//                         )),
//                         Center(
//                             child: PreviewCard(
//                           imagePath: Image.asset("assets/docImage.png"),
//                         )),
//                         Center(
//                             child: PreviewCard(
//                           imagePath: Image.asset("assets/docImage.png"),
//                         )),
//                         Center(
//                             child: PreviewCard(
//                           imagePath: Image.asset("assets/docImage.png"),
//                         )),
//                         Center(
//                             child: PreviewCard(
//                           imagePath: Image.asset("assets/docImage.png"),
//                         )),
//                         Center(
//                             child: PreviewCard(
//                           imagePath: Image.asset("assets/docImage.png"),
//                         )),
//                       ]),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class _Screen0State extends State<Screen0> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff08182A),
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: size.width * 0.07),
              Container(
                  // color: Colors.green,
                  // child: SearchBar(searchController: searchController),
                  ),
              SizedBox(height: size.width * 0.1),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: size.width * 0.1),
                    Container(
                      child: Text(
                        "Hello Harsh!",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(height: size.width * 0.1),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    Container(
                      // color: Colors.yellow,
                      child: Text(
                        "Recent Folders",
                        style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontSize: 24,
                          color: Colors.white54,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                // color: Colors.yellow,
                height: size.width * 0.5,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 12, right: 12),
                  children: [
                    DocCard(screenStateIndex: 1,docCardName: "Pen",Message: "Type Handwritten Docs",gallaryIndexValue: 0,),
                    SizedBox(width: 12),
                    DocCard(screenStateIndex: 1,docCardName: "Scan",Message: "Scan Your Docs" ,gallaryIndexValue: 1,),
                  ],
                ),
              ),
              SizedBox(height: size.width * 0.1),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    Container(
                      child: Text(
                        "Recent documents",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 18,
                          color: Colors.white54,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // margin: EdgeInsets.only(bottom: size.width * 0.14),
                height: size.width * 0.825,
                child: GridView.count(
                    scrollDirection: Axis.vertical,
                    childAspectRatio: 2.5,
                    crossAxisCount: 1,
                    crossAxisSpacing: 2,
                    // mainAxisSpacing: 2,
                    // padding: EdgeInsets.only(right: 20, left: 20, top: 8),
                    children: [
                      Center(
                          child: Stack(children: [
                        PreviewCard(
                          imagePath: Image.asset("assets/docImage.png"),
                        ),
                        Positioned(
                          top: 55,
                          right: 30,
                          child: ClipOval(
                            clipBehavior: Clip.antiAlias,
                            child: Container(
                                color: Colors.blue.shade300,
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/folder.png")),
                          ),
                        )
                      ])),
                      Center(
                          child: Stack(children: [
                        PreviewCard(
                          imagePath: Image.asset("assets/docImage.png"),
                        ),
                        Positioned(
                          top: 55,
                          right: 30,
                          child: ClipOval(
                            child: Container(
                                color: Colors.blue.shade300,
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/folder.png")),
                          ),
                        )
                      ])),
                      Center(
                          child: Stack(children: [
                        PreviewCard(
                          imagePath: Image.asset("assets/docImage.png"),
                        ),
                        Positioned(
                          top: 55,
                          right: 30,
                          child: ClipOval(
                            child: Container(
                                color: Colors.blue.shade300,
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/scanner.png")),
                          ),
                        )
                      ])),
                      Center(
                          child: Stack(children: [
                        PreviewCard(
                          imagePath: Image.asset("assets/docImage.png"),
                        ),
                        Positioned(
                          top: 55,
                          right: 30,
                          child: ClipOval(
                            child: Container(
                                color: Colors.blue.shade300,
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/folder.png")),
                          ),
                        )
                      ])),
                      Center(
                          child: Stack(children: [
                        PreviewCard(
                          imagePath: Image.asset("assets/docImage.png"),
                        ),
                        Positioned(
                          top: 55,
                          right: 30,
                          child: ClipOval(
                            child: Container(
                                color: Colors.blue.shade300,
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/scanner.png")),
                          ),
                        )
                      ])),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
