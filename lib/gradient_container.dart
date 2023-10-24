import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
//import 'package:first_app/styled_text.dart';

// var startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;
// final startAlignment = Alignment.topLeft; // never changes (can be variable)
// final endAlignment = Alignment.bottomRight; // never changes (can be variable)
const startAlignment = Alignment
    .topLeft; // never changes and value is given at the time of compilation
const endAlignment = Alignment
    .bottomRight; // never changes and value is given at the time of compilation
// Alignment? startAlignment;
// Alignment? endAlignment;

class GradientContainer extends StatelessWidget {
  // const GradientContainer(this.color1,this.color2,{super.key});
  //final Color color1;
  //final Color color2;
  // const GradientContainer(this.colors,{super.key});
  const GradientContainer({super.key, required this.colors});

  // const GradientContainer.purple([super.key])
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.indigo;

  final List<Color> colors;

  @override // overriding build from statelesswidget
  Widget build(context) {
    // startAlignment = Alignment.topLeft;
    // endAlignment = Alignment.bottomRight;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      // backgroundColor: ,
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
