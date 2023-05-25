
import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

class Speech extends StatefulWidget {
  const Speech({Key? key}) : super(key: key);

  @override
  State<Speech> createState() => _SpeechState();
}

class _SpeechState extends State<Speech> {
  TextToSpeech tt = TextToSpeech();

  TextEditingController word = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        title: Text("Text To Speech"),
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
                TextField(
                  controller: word,
                  decoration: InputDecoration(
                      labelText: "Enter an Expression",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                ElevatedButton(onPressed: (){
                  tt.speak('${word.text}');
                }, child: Text("Pronounce"))

              ],
            ),
          ),
        ),
      ),
    );
  }
}