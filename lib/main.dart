import 'package:first_app/background_gradient.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: BackgroundGradient(Colors.black, Colors.white10),
      ),
    ),
  );
}
