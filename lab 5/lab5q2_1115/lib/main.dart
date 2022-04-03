import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const q2());
}

class q2 extends StatefulWidget {
  const q2({Key? key}) : super(key: key);

  @override
  State<q2> createState() => _MyAppState();
}

class _MyAppState extends State<q2> {
  AudioCache audioCache = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          mybutton(1, Colors.yellow),
          mybutton(2, Colors.black),
          mybutton(3, Colors.purple),
          mybutton(4, Colors.blue),
          mybutton(5, Colors.orange),
          mybutton(6, Colors.red),
          mybutton(7, Colors.green),
        ]),
      )),
    );
  }

  Expanded mybutton(notefilenumber, mycolor) {
    return Expanded(
        child: FlatButton(
      color: mycolor,
      onPressed: () {
        audioCache.play('note$notefilenumber.wav');
      },
      child: Text(""),
    ));
  }
}
