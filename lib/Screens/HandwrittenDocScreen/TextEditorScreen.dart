import 'package:flutter/material.dart';

class TextEditorDocScreen extends StatefulWidget {
  const TextEditorDocScreen({Key? key}) : super(key: key);

  @override
  _TextEditorDocScreenState createState() => _TextEditorDocScreenState();
}

class _TextEditorDocScreenState extends State<TextEditorDocScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.transparent,
        child: Text(
          "hey its handwritten doc screen",
          style: TextStyle(color: Colors.red, backgroundColor: Colors.white),
        ),
      ),
    );
  }
}
