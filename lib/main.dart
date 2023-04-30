import 'package:flutter/material.dart';

import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      //backgroundColor: Color.fromARGB(255, 105, 25, 255),
      body: gradient_container(Colors.deepOrange, Colors.orange),
      //gradient_container.orange(),
    ),
  ));
}
