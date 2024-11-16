import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  void roll() {
    var num = Random().nextInt(6) + 1;
    setState(() {
      path = "assets/images/dice-$num.png";
    });

    print("CLicked2");
  }

  var path = "assets/images/dice-1.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0, 0),
              end: Alignment(1, 1),
              colors: [
            Color.fromARGB(255, 34, 114, 8),
            Color.fromARGB(255, 45, 162, 7),
          ])),
      //color: Colors.black,
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Dice Roller:",
              style: TextStyle(fontSize: 44, letterSpacing: 4)),
          Image.asset(
            path,
            width: 100,
          ),
          SizedBox(
              width: 50,
              height: 50,
              child: TextButton(onPressed: roll, child: const Text('Roll'))),
          Icon(
            Icons.accessibility_new_outlined,
            color: Colors.red[800],
            size: 100.0,
          ),
          const Icon(Icons.accessibility_rounded),
          const Icon(Icons.accessible),
          const Icon(Icons.accessible_forward_sharp),
        ],
      )),
    );
  }
}

//ctrl .
//ctrl space
//
// body: Container(
//           decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment(0, 0),
//                   end: Alignment(1, 1),
//                   colors: [
//                 Color.fromARGB(255, 34, 114, 8),
//                 Color.fromARGB(255, 45, 162, 7)
//               ])),
//           //color: Colors.black,
//           child: const Center(
//             child: Text(
//               'Hello World!',
//               style: TextStyle(
//                   color: Color.fromARGB(255, 250, 171, 171), fontSize: 28),
//             ),
//           ),
//         ),
        





//         class DiceRoller extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//           gradient: LinearGradient(
//               begin: Alignment(0, 0),
//               end: Alignment(1, 1),
//               colors: [
//             Color.fromARGB(255, 34, 114, 8),
//             Color.fromARGB(255, 45, 162, 7)
//           ])),
//       //color: Colors.black,
//       child: Center(
//           child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text("Dice Roller:"),
//           Image.asset(
//             "assets/images/dice-2.png",
//             width: 100,
//           ),
//           TextButton(onPressed: () {}, child: const Text('Roll'))
//         ],
//       )),
//     );
//   }
// }