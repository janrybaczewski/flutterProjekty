import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final String text;
  const GradientContainer(this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0, 0),
              end: Alignment(1, 1),
              colors: [
            Color.fromARGB(255, 34, 114, 8),
            Color.fromARGB(255, 45, 162, 7)
          ])),
      //color: Colors.black,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Color.fromARGB(255, 250, 171, 171), fontSize: 21),
        ),
      ),
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
        