import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      //backgroundColor: Color.fromARGB(255, 105, 25, 255),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 167, 140),
              Color.fromARGB(255, 255, 77, 23)
            ],
          ),
        ),
        child: const Center(
          child: Text('Azzar Rizky'),
        ),
      ),
    ),
  ));
}
