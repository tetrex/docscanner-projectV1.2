import 'package:doc_scanner/State/State.dart';
import 'package:doc_scanner/Widgets/NavBar/Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
// import 'package:jumping_bottom_nav_bar/jumping_nav_bar.dart';
import './Button.dart';

// import 'dart:ui' as ui;

class NavBar extends StatefulWidget {
  // const NavBar({ Key? key }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var iconSize = size.height * 0.032;
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            // decoration: BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(4))),
            margin: EdgeInsets.only(right: size.width * 0.068, bottom: 0.5),
            height: size.width * 0.178,
            width: size.width * 0.178,
            // color: Colors.amber[400],
            child: Button(),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            // margin: EdgeInsets.only(top: 17),
            // color: Colors.greenAccent[100],
            // width: MediaQuery.of(context).size.width,
            // height: size.height * 0.4,
            child: CustomPaint(
              size: Size(
                  size.width,
                  (size.width * 0.13)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12.0),
            child: Container(
              width: size.width * 0.60,
              height: size.width * 0.12,
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.width * 0.14,
                    width: size.width * 0.14,
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        ),
                    child: Consumer<ScreenState>(
                        builder: (context, screen, child) => InkWell(
                              onTap: () {
                                print("button 0");
                                screen.index = 0;
                                screen.stateSelector();
                                print(screen.index);
                              },
                              child: (Icon(
                                Icons.home,
                                color: Colors.white,
                                size: iconSize,
                              )),
                            )),
                  ),
                  Container(
                    height: size.width * 0.14,
                    width: size.width * 0.14,
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        ),
                    child: Consumer<ScreenState>(
                        builder: (context, screen, child) => InkWell(
                              onTap: () {
                                print("button 1");
                                screen.index = 1;
                                screen.stateSelector();
                                print(screen.index);
                              },
                              child: (Icon(
                                Icons.star_rate,
                                color: Colors.white,
                                size: iconSize,
                              )),
                            )),
                  ),
                  Container(
                    height: size.width * 0.14,
                    width: size.width * 0.14,
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        ),
                    child: Consumer<ScreenState>(
                        builder: (context, screen, child) => InkWell(
                              onTap: () {
                                print("button 2");
                                screen.index = 2;
                                screen.stateSelector();
                                print(screen.index);
                              },
                              child: (Icon(
                                Icons.folder,
                                color: Colors.white,
                                size: iconSize,
                              )),
                            )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromRGBO(15, 50, 84, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.lineTo(0, 0);
    path_0.quadraticBezierTo(size.width * 0.5375000, size.height * 0.0002000,
        size.width * 0.6875000, 0);
    path_0.cubicTo(
        size.width * 0.7579750,
        size.height * 0.0042000,
        size.width * 0.7609375,
        size.height * 0.3940000,
        size.width * 0.7750000,
        size.height * 0.5000000);
    path_0.quadraticBezierTo(size.width * 0.7925000, size.height * 0.7281000,
        size.width * 0.8437500, size.height * 0.7800000);
    path_0.quadraticBezierTo(size.width * 0.8950000, size.height * 0.7484000,
        size.width * 0.9125000, size.height * 0.5000000);
    path_0.cubicTo(size.width * 0.9281250, size.height * 0.4001000,
        size.width * 0.9337875, size.height * 0.0035000, size.width, 0);
    path_0.quadraticBezierTo(
        size.width * 0.9921875, size.height * 0.0001000, size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
