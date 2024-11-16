import 'package:app1/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:app1/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: const Color.fromARGB(255, 114, 89, 8),
          backgroundColor: Colors.red[800],
          centerTitle: true,
          title: const Text("Polska GUROM"),
        ),
        body: DiceRoller(),
      ),
    ),
  );
}
