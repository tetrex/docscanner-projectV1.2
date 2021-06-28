import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

void showRevealImageDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Label",
    transitionDuration: Duration(milliseconds: 200),
    pageBuilder: (context, anim1, anim2) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: ClipPath(
          clipper: ProsteBezierCurve(
            position: ClipPosition.top,
            list: [
              BezierCurveSection(
                start: Offset(MediaQuery.of(context).size.width, 50),
                top: Offset(MediaQuery.of(context).size.width * 0.5, 0),
                end: Offset(0, 50),
              ),
            ],
          ),
          child: Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 1,
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return CircularRevealAnimation(
        child: child,
        animation: anim1,
        centerAlignment: Alignment(0.55, 0.83),
      );
    },
  );
}