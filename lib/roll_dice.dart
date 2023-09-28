import 'package:flutter/material.dart';
import 'dart:math';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

final custom = Random();

var diceDots = 1;

class _RollDiceState extends State<RollDice> {
  void rollDice() {
    diceDots = custom.nextInt(49) + 1; // <1,49>
    setState(() {});
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Text('$diceDots'),
        ),
        Center(
          child: ElevatedButton(
            onPressed: rollDice,
            child: const Text("Press"),
          ),
        ),
      ],
    );
  }
}
