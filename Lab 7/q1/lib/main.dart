import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const Location());
}

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  double? latitude;
  double? longitude;

  // Task 1

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    print('called');
    setState(() {
      latitude = position.latitude;
      longitude = position.longitude;
    });
    print(position.latitude);
    print(position.longitude);
  }

  // Task 2

  void checklocationStatus() async {
    LocationPermission Permissions = await Geolocator.checkPermission();
    if (Permissions == LocationPermission.denied) {
      print("Permission denied");
    } else {
      print("Permission allowed");
    }
  }

  // Task 3

  @override
  initState() {
    checklocationStatus();
    getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  getLocation();
                },
                icon: Icon(Icons.location_on)),
            IconButton(
                onPressed: () {
                  checklocationStatus();
                },
                icon: Icon(Icons.block)),
            Text('latitude: $latitude , longitude: $longitude')
          ],
        ),
      )),
    );
  }
}
