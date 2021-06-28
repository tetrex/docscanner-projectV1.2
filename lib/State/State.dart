import 'package:doc_scanner/Screens/HandwrittenDocScreen/TextEditorScreen.dart';
import 'package:doc_scanner/Screens/ScannerDocScreen/ActiveScannerScreen.dart';
import 'package:doc_scanner/Screens/Screen0/Screen0.dart';
import 'package:doc_scanner/Screens/Screen1/Screen1.dart';
import 'package:doc_scanner/Screens/Screen2/Screen2.dart';
import 'package:doc_scanner/Widgets/NavBar/HandWrittenButton.dart';
import 'package:flutter/material.dart';
import '../Widgets/NavBar/ScannerButton.dart';

class ScreenState extends ChangeNotifier {
  int index = 0;
  var buttonIndexPopUp = 0;
  int gallaryIndex = 1;
  Widget element = Screen0();
  String gallaryName = "";
  List handwrittenDocPopUpState = ["Hide", "Cancle"];
  String buttonState = "Cancle";

  // Widget ButtonState = Center();

  List docCardName = [
    "Handwritten Docs",
    "Scanned Docs",
    "Starred Docs",
    "Gallary"
  ];
  List listOfBody = [
    Screen0(),
    Screen2(),
    TextEditorDocScreen(),
    ActiveScannerScreen(),
  ];

  List<Widget> ButtonForm = [
    Center(),
    HandWrittenButton(),
    ScannerButton(),
  ];

  stateSelector() {
    print("${listOfBody.length} is value of list of body length");
    element = listOfBody[index];
    notifyListeners();
  }

  selectGallary() {
    gallaryName = docCardName[gallaryIndex];
    // print("${gallaryName}");
    notifyListeners();
  }

  mainButtonStateSelector() {
    if (index == 0) {
      return ButtonForm[0];
    } else if (index == 2) {
      return (ButtonForm[1]);
    } else if (index == 3) {
      return (ButtonForm[2]);
    } else {
      return (ButtonForm[0]);
    }
  }

  // popUpCardState() {

  // buttonState = handwrittenDocPopUpState[buttonIndexPopUp];
  // notifyListeners();
  // }
}
