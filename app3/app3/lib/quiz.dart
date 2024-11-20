import 'package:app3/questions.dart';
import 'package:app3/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Widget? activeScreen;
  var activeScreen = "start_screen";

  void switchScreen() {
    setState(() {
      activeScreen = activeScreen = "questions";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 58, 11, 67),
              Color.fromARGB(255, 117, 9, 136)
            ])),
            child: activeScreen == "start_screen"
                ? StartScreen(switchScreen)
                : Questions(switchScreen)),
      ),
    );
  }
}
