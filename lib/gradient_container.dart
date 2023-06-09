import 'package:flutter/material.dart';

import 'package:dice_app/styled_text.dart';
import 'package:dice_app/dice_roller.dart';

class gradient_container extends StatelessWidget {
  const gradient_container(this.color1, this.color2, {super.key});

  const gradient_container.orange({super.key})
      : color1 = Colors.deepOrange,
        color2 = Colors.orange;

  final Color color1;
  final Color color2;

  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          // [
          //   Color.fromARGB(255, 49, 0, 164),
          //   Color.fromARGB(255, 41, 0, 144)
          // ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: dice_roller()),
    );
  }
}



// class gradient_container extends StatelessWidget {
//   const gradient_container({required this.colors, super.key});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           // [
//           //   Color.fromARGB(255, 49, 0, 164),
//           //   Color.fromARGB(255, 41, 0, 144)
//           // ],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: styled_text('Alo Beb'),
//       ),
//     );
//   }
// }
