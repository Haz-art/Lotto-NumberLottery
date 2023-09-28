import 'package:first_app/random_1_9.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class RollDice extends StatefulWidget {
  const RollDice(this.maxNumber, {super.key});
  final int maxNumber;

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

final custom = Random();

var diceDots = 1;

class _RollDiceState extends State<RollDice> {
  void rollDice() {
    diceDots = custom.nextInt(widget.maxNumber) + 1; // <1,49>
    setState(() {});
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Text('$diceDots', style: const TextStyle(fontSize: 40)),
        ),
        //Center(
        //  child: ElevatedButton(
        //    onPressed: rollDice,
        //    child: const Text("Losuj"),
        //  ),
        //),
        const Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: RollNumber(49),
          ),
        ),
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: RollNumber(9),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: RollNumber(9),
            ),
          ],
        ),
      ],
    );
  }
}
