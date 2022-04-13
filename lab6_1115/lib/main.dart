import 'package:flutter/material.dart';
import 'list.dart';
import 'brain.dart';

void main() {
  runApp(lab6_1115());
}

class lab6_1115 extends StatefulWidget {
  const lab6_1115({Key? key}) : super(key: key);

  @override
  State<lab6_1115> createState() => _lab6_1115State();
}

class _lab6_1115State extends State<lab6_1115> {
  brain obj = brain();
  List<Widget> answer = [];

  void check(bool Answer) {
    bool True = obj.CorrectAnswer();
    if (obj.finish() == true) {
      obj.reset();
      answer = [];
    } else {
      if (True == Answer) {
        answer.add(
          Icon(Icons.check, color: Colors.teal),
        );
      } else {
        answer.add(
          Icon(Icons.close, color: Colors.redAccent),
        );
      }
      setState(() {
        obj.next();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: Text(
                        obj.get(),
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        check(true);
                      },
                      child: Text(
                        'true',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.red,
                      onPressed: () {
                        check(false);
                      },
                      child: Text(
                        'false',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: answer,
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
