import 'package:flutter/material.dart';

class PreviewCard extends StatelessWidget {
  const PreviewCard({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  final Widget imagePath;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        // padding: EdgeInsets.all(12),
        width: size.width,
        height: size.width * 0.35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 8, bottom: 8),
          child: imagePath,
        )),
      ),
    );
  }
}
//Image.asset("assets/docImage.png")

// chal start ho ja

// server ni chal rha
//yahi dhk le ...
// abbe mobile p kaisa dikh rha hai ye dekhna pdega na
// screen share se kaam nahi chalega?
// krde chala lunga
// ok?

// check on other screens!!! hogya bro........
// bro u there?
// haan dhka abhi!!!!
// time lgrga kya aur?
// 5 more min
// gaali dede unko ye kauns sa time hai call krne ka
// ruk yar.... asljdhasdaskljdhkasjdhkjsahdljsahdlsa

// hahaha ruka hua hoon
// tu taab thk doc reading dhk le kaise krte hai ... flutter me  haan wait
