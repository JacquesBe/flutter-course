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
  final List<String> dice = [
    'assets/dice-1.png',
    'assets/dice-2.png',
    'assets/dice-3.png',
    'assets/dice-4.png',
    'assets/dice-4.png',
    'assets/dice-6.png',
  ];

  int randomNumber = 0;

  void rollDice() {
    setState(() {
      randomNumber = Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Image.asset(dice[randomNumber], width: 200),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
