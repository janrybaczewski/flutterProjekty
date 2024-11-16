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
      activeScreen = ScreenTwo();
    });
  }

  Widget? activeScreen;
  //= ScreenOne(() {
  //print("screen switched");
  //});

  @override
  void initState() {
    activeScreen = ScreenOne(screenSwitch);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: activeScreen));
  }
}
