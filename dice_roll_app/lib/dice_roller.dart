import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String diceImage = 'assets/dice-1.png';
  void rollDice() {
    setState(() {
      final randomInt = Random().nextInt(6);
      diceImage = 'assets/dice-$randomInt.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Image.asset(diceImage, width: 200),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
