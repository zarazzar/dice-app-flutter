import 'package:flutter/material.dart';

import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      //backgroundColor: Color.fromARGB(255, 105, 25, 255),
      body: gradient_container(Colors.deepOrange, Colors.orange),
    ),
  ));
}
