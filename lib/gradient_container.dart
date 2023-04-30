import 'package:flutter/material.dart';

import 'package:dice_app/styled_text.dart';

class gradient_container extends StatelessWidget {
  gradient_container(this.color1, this.color2, {super.key});

  gradient_container.orange({super.key})
      : color1 = Colors.deepOrange,
        color2 = Colors.orange;

  final Color color1;
  final Color color2;

  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;
  var activeDiceImage = 'assets/img/dice-1.png';

  void onPressed() {
    activeDiceImage = 'assets/img/dice-4.png';
    print('Changing image...');
  }

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
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 18,
              ),
              // backgroundColor: Colors.orange),
            ),
            child: const Text('Kocok Dadu'),
          )
        ],
      )),
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
