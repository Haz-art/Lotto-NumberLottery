import 'package:first_app/random_1_9.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  @override
  Widget build(context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "LOTTO",
          style: TextStyle(
            fontSize: 80,
          ),
        ),
        SizedBox(height: 180),
        Center(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: RollNumber(49),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(28.0),
              child: RollNumber(9),
            ),
            Padding(
              padding: EdgeInsets.all(28.0),
              child: RollNumber(9),
            ),
          ],
        ),
      ],
    );
  }
}
