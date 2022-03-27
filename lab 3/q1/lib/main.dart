import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("Mobile App Dev lab"),
        ),
        body: Container(
          child: Center(child: Text("You have pressed the button 0 times.")),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: "This button is not functional",
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
