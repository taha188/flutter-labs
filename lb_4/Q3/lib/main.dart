import 'package:flutter/material.dart';

void main() {
  runApp(Task3());
}

class Task3 extends StatelessWidget {
  Task3({Key? key}) : super(key: key);

  static const String _title = 'Task 3';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: SafeArea(
        child: Scaffold(
          body: const MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enabled'),
            ),
            TextButton(
                child: Text('Enabled'),
                onPressed: () {
                  print('Pressed');
                }),
            IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
