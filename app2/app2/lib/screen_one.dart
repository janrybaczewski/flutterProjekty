import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne(this.switchScreen);
  final void Function() switchScreen;
  @override
  State<ScreenOne> createState() {
    return _ScreenOne(switchScreen);
  }
}

class _ScreenOne extends State<ScreenOne> {
  final void Function() switchScreen;

  _ScreenOne(this.switchScreen);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: Center(
          child: TextButton(
              onPressed: () {
                switchScreen();
              },
              child: Text("switch to 2")),
        ));
  }
}
