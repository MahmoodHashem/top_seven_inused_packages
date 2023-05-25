import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'package:text_to_speech/text_to_speech.dart';


class Translator extends StatefulWidget {
  const Translator({Key? key}) : super(key: key);

  @override
  State<Translator> createState() => _TranslatorState();
}

class _TranslatorState extends State<Translator> {

TextToSpeech tt = TextToSpeech();

  TextEditingController english = TextEditingController();
  String? persian = ' '; 
  final translator = GoogleTranslator();
  void translate(){
    translator.translate("${english.text}", from: 'en', to: 'fa').then((s) {
      print(s);
      persian = s.text;
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        title: Text("Google Translator"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: english,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                      labelText: "Enter an expression",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:ListView(
                    children: [
                      Text('$persian',
                    textDirection: TextDirection.rtl,
                    ),
                    ]
                  ) ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        translate();
                      });

                    }, child: Text("Translate")),
                    SizedBox(
                      width: 20,
                    ),
                   IconButton(onPressed: (){
                     tt.speak('${english.text}');
                   }, icon: Icon(Icons.record_voice_over))],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}