

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Photo(),
  ),);

}

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        title: Text("Photo View"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Center(
              child: Container(
               child: PhotoView(
               imageProvider: AssetImage("images/time1.png"),
                )
            ),
            ),
          ),
        ),
    );
  }
}
