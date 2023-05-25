
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:math';
import 'package:text_to_speech/text_to_speech.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:EnglishWords(),
  ),);

}

class EnglishWords extends StatefulWidget {
  const EnglishWords({Key? key}) : super(key: key);

  @override
  State<EnglishWords> createState() => _EnglishWordsState();
}

class _EnglishWordsState extends State<EnglishWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        actions: [Column(
          children: [IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (c) => NewWordPage()));

          }, icon: Icon(Icons.search)),
            Text("Find Nouns", )],
        ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (c) => NewAdj()));

                  }, icon: Icon(Icons.search)),
              Text("Find Adj")
            ],

          )],
        title: Text("Demo"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (c, i){
                    return ListTile(title: Text("Noun = ${nouns[i]} \nAdjective = ${adjectives[i]}"));
                  })
          ),
        ),
      ),
    );
  }
}

class NewWordPage extends StatefulWidget {
  NewWordPage({Key? key}) : super(key: key);

  @override
  State<NewWordPage> createState() => _NewWordPageState();
}

class _NewWordPageState extends State<NewWordPage> {
  var newGeneratedWord = nouns[(Random().nextInt(500))];

  TextToSpeech tts = TextToSpeech();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade100,
      body: GestureDetector(
        onDoubleTap: (){
          Navigator.pop(context);
        },
        onTap: (){
          tts.speak(newGeneratedWord);
        },
        child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
                child: Text(newGeneratedWord, style: TextStyle(
                  color: Colors.black,
                  fontSize: 100,
                  fontFamily: 'BebasNeue',
                ),)
            )
        ),
      ),
    );
  }
}

class NewAdj extends StatelessWidget {
  NewAdj({Key? key}) : super(key: key);

  var newGeneratedAdj = adjectives[(Random().nextInt(500))];

  TextToSpeech tts = TextToSpeech();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade100,
      body: GestureDetector(
        onDoubleTap: () {
          Navigator.pop(context);
        },
        onTap: () {
          tts.speak(newGeneratedAdj);
        },
        child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
                child: Text(newGeneratedAdj, style: TextStyle(
                  color: Colors.black,
                  fontSize: 100,
                  fontFamily: 'BebasNeue',
                ),)
            )
        ),
      ),
    );
  }
}
