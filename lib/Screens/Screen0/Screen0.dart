import 'package:doc_scanner/Utils/DocCard.dart';
import 'package:doc_scanner/Utils/PreviewCard.dart';
import 'package:doc_scanner/Utils/SerchBar.dart';
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
              SizedBox(height: 55),
              Container(
                child: SearchBar(searchController: searchController),
              ),
              SizedBox(height: 28),
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
              SizedBox(height: 52),
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
                height: 159,
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
              SizedBox(height: 36),
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
                      childAspectRatio: 0.9,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 8.0,
                      padding: EdgeInsets.only(right: 20, left: 20, top: 8),
                      children: [
                        Center(child: PreviewCard()),
                        Center(child: PreviewCard()),
                        Center(child: PreviewCard()),
                        Center(child: PreviewCard()),
                        Center(child: PreviewCard()),
                        Center(child: PreviewCard()),
                        Center(child: PreviewCard()),
                        Center(child: PreviewCard()),
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
