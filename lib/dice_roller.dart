import 'dart:math';

import 'package:flutter/material.dart';

final randomizer =
    Random(); //created to minimize possibiliies of overloading the memory with not-thrown-away objects

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  // do not build if stateful widget
  // instead, createState
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// the underscore means the class can only be used in this file
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        width: 200,
      ),
      // ElevatedButton(onPressed: onPressed, child: child)
      // OutlinedButton(onPressed: onPressed, child: child)
      const SizedBox(
        // ao inves de sized box pode usar padding no widget
        height: 20,
      ),
      TextButton(
        // onPressed: (){}, // anonymous function
        onPressed: rollDice,
        style: TextButton.styleFrom(
          // padding: const EdgeInsets.only( // ao inves de padding pode usar um widget 'sizedbox'
          //   top: 20,
          // ),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 28,
          ),
        ),
        child: const Text(
            'Roll Dice'), // recommended by flutter to keep widgets last
      )
    ]);
  }
}
