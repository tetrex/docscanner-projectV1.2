import 'package:flutter/material.dart';

class DocGallary extends StatelessWidget {
  const DocGallary({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size.height * (2 / 17)),
      height: size.height * (5 / 12),
      width: size.width,
      child: Center(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: Container(
                  decoration: BoxDecoration(
                    // boxShadow: [BoxShadow(color: Colors.black,spreadRadius: 8)],
                    // color: Colors.amber,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28),
                        topRight: Radius.circular(28)),
                  ),
                  height: size.height,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Center(
                        child: Container(
                      width: size.width,
                      height: size.height,
                      // color: Colors.limeAccent,
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0,left: 8.0,right:8.0,bottom:60),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: GridView.count(
                            childAspectRatio: 0.8,
                            crossAxisCount: 3,
                            crossAxisSpacing: 12.0,
                            mainAxisSpacing: 12.0,
                            children: [
                              Card(
                                  elevation: 8,
                                  child: Center(
                                      child: Icon(
                                    Icons.add_circle_outline,
                                    size: 40,
                                    color: Colors.grey.shade700,
                                  ))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                              Card(
                                  elevation: 8,
                                  child: Center(child: Text("Element"))),
                            ],
                          ),
                        ),
                      ),
                    )),
                  )))),
    );
  }
}
