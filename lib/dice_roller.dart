import 'package:flutter/material.dart';

import 'dart:math';

class dice_roller extends StatefulWidget {
  dice_roller({super.key});

  @override
  State<dice_roller> createState() {
    return _DiceRollerState();
  }
}

final randomizer = Random();

class _DiceRollerState extends State<dice_roller> {
  var currentDiceNumber = 1;

  void onPressed() {
    setState(() {
      currentDiceNumber = randomizer.nextInt(6) + 1; //0-5
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/img/dice-$currentDiceNumber.png',
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
    );
  }
}
