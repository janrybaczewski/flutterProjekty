import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions(void Function() switchScreen, {super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Questions"),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: () {}, child: const Text("ans1")),
            ElevatedButton(onPressed: () {}, child: const Text("ans2")),
            ElevatedButton(onPressed: () {}, child: const Text("ans3")),
            ElevatedButton(onPressed: () {}, child: const Text("ans4")),
          ],
        ));
  }
}

//