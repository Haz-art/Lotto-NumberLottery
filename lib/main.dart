import 'package:first_app/background_gradient.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: BackgroundGradient(
          Color.fromARGB(255, 255, 227, 71),
          Color.fromARGB(255, 248, 155, 48),
        ),
      ),
    ),
  );
}
