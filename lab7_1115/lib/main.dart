import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff1c2135);
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: const MyHomePage(),
    );
  }
}

enum Gender {
  female,
  male,
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gender? SelectedGender;
  int height = 180;
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff1c2135);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: primaryColor,
          title: Text('BMI CALCULATOR'),
        ),
        body: Center(
          child: Container(
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff24263b),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff24263b).withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                          child: Column(children: [
                            Icon(
                              Icons.male,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff24263b),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff24263b).withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                          child: Column(children: [
                            Icon(
                              Icons.female,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      height.toString(),
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Text(
                      ' CM',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff24263b),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff24263b).withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                          child: Column(children: [
                            Icon(
                              Icons.male,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff24263b),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff24263b).withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                          child: Column(children: [
                            Icon(
                              Icons.female,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
        ));
  }
}
