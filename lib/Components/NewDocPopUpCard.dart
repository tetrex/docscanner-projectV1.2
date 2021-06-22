import 'package:flutter/material.dart';

class NewDOcPopUpCard extends StatelessWidget {
  const NewDOcPopUpCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      elevation: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        height: 225,
        width: 375,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 50, spreadRadius: 2)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 12, top: 16, right: 12, bottom: 16),
                    child: Text(
                      "Name : ",
                      style: TextStyle(fontFamily: "Poppins", fontSize: 35),
                    ),
                  ),
                  Container(
                    width: size.width * .35,
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 20),
                        hintText: "Untitled.doc",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 110,
                    width: 95,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 50,
                            spreadRadius: 2)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.upload_rounded,
                      size: 90,
                    ),
                  ),
                  Container(
                    height: 110,
                    width: 95,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 50,
                            spreadRadius: 2)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.note_add_rounded,
                      size: 90,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              width: 95,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 50, spreadRadius: 2)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Cancle",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
