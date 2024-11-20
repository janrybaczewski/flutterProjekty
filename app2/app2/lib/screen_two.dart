import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  final void Function() switchScreen;

  const ScreenTwo(this.switchScreen);

  @override
  State<ScreenTwo> createState() {
    return _ScreenTwo();
  }
}

class _ScreenTwo extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image from assets
              Image.asset(
                'assets/images/dart_image.png',
                width: 200, // Adjust the width as needed
                height: 200, // Adjust the height as needed
              ),
              SizedBox(height: 20), // Space between image and button
              Center(
                child: TextButton(
                  onPressed: () {
                    widget.switchScreen();
                  },
                  child: Text("Switch to Screen One"),
                ),
              ),
            ],
          ),
        ),
        const Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "I love dart",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
