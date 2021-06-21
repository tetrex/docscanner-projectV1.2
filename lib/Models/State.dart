import 'package:doc_scanner/Screens/Screen0/Screen0.dart';
import 'package:doc_scanner/Screens/Screen1/Screen1.dart';
import 'package:doc_scanner/Screens/Screen2/Screen2.dart';
import 'package:flutter/material.dart';

class ScreenState extends ChangeNotifier {
  int index = 0;
  Widget element = Screen0();

  List listOfBody = [
    Screen0(),
    Screen1(),
    Screen2(),
  ];

  stateSelector() {
    print(listOfBody.length);
    element = listOfBody[index];
    notifyListeners();
  }
}
