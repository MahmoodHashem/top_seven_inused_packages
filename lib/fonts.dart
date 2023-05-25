
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Fonts extends StatelessWidget {
  const Fonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        title: Text("FONTS",
        style: GoogleFonts.secularOne(),),
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
                  Text("This is Roboto font",
                  style: GoogleFonts.roboto(
                    fontSize: 30,
                  )),
                  Text("This is Source Sans font",
                  style: GoogleFonts.sourceSans3(
                    fontSize: 30,
                  )),
                  Text("This is Kanit font",
                  style: GoogleFonts.kanit(
                    fontSize: 30,
                  )),
                  Text("This is Railway font",
                  style: GoogleFonts.raleway(
                    fontSize: 30,
                  )),
                  Text("This is Roboto font",
                  style: GoogleFonts.roboto(
                    fontSize: 30,
                  )),
                  Text("This is Yanone font",
                  style: GoogleFonts.yanoneKaffeesatz(
                    fontSize: 30,
                  )),

                ],
              ),
            ),
          ),
        ),
    );
  }
}


