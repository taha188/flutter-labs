// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'task 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                ),
              ),
              Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                ),
              ),
              Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
