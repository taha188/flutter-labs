import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const ballpage());
}

class ballpage extends StatelessWidget {
  const ballpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random randomnumber = Random();
    int currentnumber = randomnumber.nextInt(4) + 1;

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text("Ask me anything"),
            backgroundColor: Color.fromARGB(255, 5, 49, 116),
          ),
          body: Center(
            child: Container(
              child: FlatButton(
                  onPressed: () {
                    print("I got clicked");
                    print('$currentnumber');
                  },
                  child: Image.asset('assets/ball5.png')),
            ),
          )),
    );
  }
}
