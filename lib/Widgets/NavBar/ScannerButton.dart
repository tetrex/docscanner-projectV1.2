import 'package:doc_scanner/Widgets/NavBar/showRevealImageDialog.dart';
import 'package:flutter/material.dart';


class ScannerButton extends StatefulWidget {
  const ScannerButton({Key? key}) : super(key: key);

  @override
  _ButtonMainState createState() => _ButtonMainState();
}

class _ButtonMainState extends State<ScannerButton> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.all(Radius.circular(4))),
        margin: EdgeInsets.only(right: size.width * 0.068, bottom: 0.5),
        height: size.width * 0.178,
        width: size.width * 0.178,
        // color: Colors.amber[400],
        child: ClipOval(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xff44C4D2), Color(0xff154DA2)]),
            ),
            // height: 60,
            // width: 60,
            // color: Colors.amber[400],
            child: Center(
              child: GestureDetector(
                onTap: () => showRevealImageDialog(context),
                child: Icon(
                  Icons.photo_camera,
                  size: 45,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
