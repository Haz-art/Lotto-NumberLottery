//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:first_app/roll_dice.dart';
//import 'package:first_app/text_widget.dart';

class BackgroundGradient extends StatefulWidget {
  const BackgroundGradient(this.colorStart, this.colorEnd, {super.key});
  final Color colorStart;
  final Color colorEnd;

  @override
  State<BackgroundGradient> createState() => _BackgroundGradientState();
}

class _BackgroundGradientState extends State<BackgroundGradient> {
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            widget.colorStart,
            widget.colorEnd,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      //child: const TextWidget("Hello world!"),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}
