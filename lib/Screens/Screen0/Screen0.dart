import 'package:doc_scanner/Components/DocCard.dart';
import 'package:doc_scanner/Components/PreviewCard.dart';
import 'package:doc_scanner/Components/SerchBar.dart';
import 'package:flutter/material.dart';

class Screen0 extends StatefulWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  _Screen0State createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
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
              SizedBox(height: size.width*0.07),
              Container(
                color: Colors.green,
                child: SearchBar(searchController: searchController),
              ),
              SizedBox(height: size.width*0.1),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 39),
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
              SizedBox(height: size.width*0.15),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    Container(
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
                height: size.width*0.4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 12, right: 12),
                  children: [
                    DocCard(),
                    SizedBox(width: 12),
                    DocCard(),
                  ],
                ),
              ),
              SizedBox(height: size.width*0.1),
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
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 285,
                  child: GridView.count(
                      scrollDirection: Axis.horizontal,
                      childAspectRatio: 1.4,
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      padding: EdgeInsets.only(right: 20, left: 20, top: 8),
                      children: [
                        Center(
                            child: Stack(children: [
                          PreviewCard(),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ClipOval(
                              child: Container(
                                  color: Colors.blue.shade300,
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/scanner.png")),
                            ),
                          )
                        ])),
                        Center(
                            child: Stack(children: [
                          PreviewCard(),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ClipOval(
                              child: Container(
                                  color: Colors.blue.shade300,
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/folder.png")),
                            ),
                          )
                        ])),
                        Center(
                            child: Stack(children: [
                          PreviewCard(),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ClipOval(
                              child: Container(
                                  color: Colors.blue.shade300,
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/scanner.png")),
                            ),
                          )
                        ])),
                        Center(
                            child: Stack(children: [
                          PreviewCard(),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ClipOval(
                              child: Container(
                                  color: Colors.blue.shade300,
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/folder.png")),
                            ),
                          )
                        ])),
                        Center(
                            child: Stack(children: [
                          PreviewCard(),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ClipOval(
                              child: Container(
                                  color: Colors.blue.shade300,
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/scanner.png")),
                            ),
                          )
                        ])),
                        Center(
                            child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Text(
                              "View All",
                              style: TextStyle(fontSize: 38),
                            )),
                          ),
                        )),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
