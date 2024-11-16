import 'package:app2/screen_one.dart';
import 'package:app2/screen_two.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() {
    return _MainScreen();
  }
}

class _MainScreen extends State<MainScreen> {
  void screenSwitch() {
    setState(() {
      activeScreenName = "ScreenTwo";
    });
  }

  var activeScreenName = "ScreenOne";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: activeScreenName == "ScreenOne"
                ? ScreenOne(screenSwitch)
                : ScreenTwo()));
  }
}
