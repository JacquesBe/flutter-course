import 'dart:math';
import 'package:dice_roll_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 83, 1, 97),
            Color.fromARGB(255, 42, 0, 55),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      alignment: Alignment.center,
      child: const DiceRoller(),
    );
  }
}
