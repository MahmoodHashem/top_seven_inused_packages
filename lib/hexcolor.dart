

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Hexcolor extends StatelessWidget {
   Hexcolor({Key? key}) : super(key: key);


   String textColor = ColorToHex(Colors.teal).toString();
   String textColor2 = ColorToHex(Colors.blue).toString();
   String textColor3 = ColorToHex(Colors.green).toString();
   String textColor4 = ColorToHex(Colors.orange).toString();
   String textColor5 = ColorToHex(Colors.red).toString();
   Color toColor = HexColor('#f2f2f2');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        title: Text("Hex Colors"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'this $textColor is teal color ',
                    style: TextStyle(color: Colors.teal),
                  ),
                  Text(
                    "this  $textColor2 is blue color",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Text(
                    "this $textColor3 is green color",
                    style: TextStyle(color: Colors.green),
                  ),
                  Text(
                    "this $textColor4 is orange color",
                    style: TextStyle(color: Colors.orange),
                  ),
                  Text(
                    'this $textColor5 is red color',
                    style: TextStyle(color: Colors.red),
                  ),

                ],
              ),
            ),
          ),
        ),
    );
  }
}
