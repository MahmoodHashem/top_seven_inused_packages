

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Animate(),
  ),);

}

class Animate extends StatefulWidget {
  const Animate({Key? key}) : super(key: key);

  @override
  State<Animate> createState() => _AnimateState();
}

class _AnimateState extends State<Animate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        title: Text("Text Animation"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(children:[
                    Text('1st Animation'),
                    SizedBox(width:20),
                    Text('My name is mahmood').animate().fade().scale(),
                  ]),
                  Row(children:[
                    Text('2nd Animation'),
                    SizedBox(width:20),
                    Text("Hello World!").animate()
                        .fadeIn() // uses `Animate.defaultDuration`
                        .scale() // inherits duration from fadeIn
                        .move(delay: 300.ms, duration: 600.ms) // runs after the above w/new duration
                        .blurXY()
                  ]),
                  Row(children:[
                    Text('3th Animation'),
                    SizedBox(width:20),
                    Text("Hello").animate()
                        .fadeIn(duration: 600.ms)
                        .then(delay: 200.ms) // baseline=800ms
                        .slide(),
                  ]),
                  Row(children:[
                    Text('4th Animation'),
                    SizedBox(width:20),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                        });
                      },
                      child: Text("Hello World").animate().custom(
                          duration: 300.ms,
                          builder: (context, value, child) => Container(
                            color: Color.lerp(Colors.red, Colors.blue, value),
                            padding: EdgeInsets.all(8),
                            child: child, // child is the Text widget being animated
                          )
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
