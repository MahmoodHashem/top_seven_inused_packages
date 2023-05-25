
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_seven_inused_packages/english_words.dart';
import 'package:top_seven_inused_packages/translator.dart';
import 'package:top_seven_inused_packages/fonts.dart';
import 'package:top_seven_inused_packages/animate.dart';
import 'Photo View.dart';
import 'package:top_seven_inused_packages/hexcolor.dart';
import 'package:top_seven_inused_packages/text_to_speech.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ),);

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  var icons = [Icon(Icons.font_download), Icon(Icons.translate), Icon(Icons.animation), Icon(Icons.photo),
  Icon(Icons.abc), Icon(Icons.color_lens), Icon(Icons.speaker_group_rounded)];
  var names = ['Fonts', 'Translator', 'Animate', 'Photo View', 'English Words', 'HexColor','Text To Speech'];
  var packages = [Fonts(), Translator(), Animate(), Photo(),EnglishWords(),Hexcolor(),Speech()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        title: Text("Seven Most Useful Packages",
        style: GoogleFonts.anton()),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
        body: ListView.separated(
          itemCount:names.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                switch (index) {
                  case 0: Navigator.push(context, MaterialPageRoute(builder: (c) => packages[0]));
                          break;
                  case 1: Navigator.push(context, MaterialPageRoute(builder: (c) => packages[1]));
                          break;
                  case 2: Navigator.push(context, MaterialPageRoute(builder: (c) => packages[2]));
                          break;
                  case 3: Navigator.push(context, MaterialPageRoute(builder: (c) => packages[3]));
                          break;
                  case 4: Navigator.push(context, MaterialPageRoute(builder: (c) => packages[4]));
                            break;
                 case 5: Navigator.push(context, MaterialPageRoute(builder: (c) => packages[5]));
                             break;
                 case 6: Navigator.push(context, MaterialPageRoute(builder: (c) => packages[6]));
                             break;

                }

              },
              tileColor: Colors.blue.shade200,
              splashColor: Colors.cyan.shade400,
              focusColor: Colors.lightBlue.shade400,
              subtitle: Text(
                '${index + 1}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: icons[index],
              title: Text(names[index],),
              trailing: Icon(Icons.keyboard_arrow_right),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.grey[400],
              height: 1,
              thickness: 1,
            );
          },
        ),
    );
  }
}



