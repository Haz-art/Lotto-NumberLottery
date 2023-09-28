import 'package:flutter/material.dart';
import 'dart:math';

class RollNumber extends StatefulWidget {
  const RollNumber(this.maxNumber, {super.key});
  final int maxNumber;

  @override
  State<RollNumber> createState() {
    return _RollNumberState();
  }
}

final custom = Random();
var randomNumber = 1;

class _RollNumberState extends State<RollNumber> {
  void RollNumber() {
    randomNumber = custom.nextInt(widget.maxNumber) + 1; // <1,49>
    setState(() {});
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Text(
            '$randomNumber',
            style: const TextStyle(fontSize: 40),
          ),
        ),
        Center(
          child: ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                Color.fromARGB(255, 192, 47, 31),
              ),
            ),
            onPressed: RollNumber,
            child: const Text("Losuj"),
          ),
        ),
      ],
    );
  }
}
