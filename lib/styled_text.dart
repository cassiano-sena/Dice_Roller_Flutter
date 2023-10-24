import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // const StyledText(String text, {super.key}) : outputText = text;
  const StyledText(this.outputText, {super.key});

  final String outputText;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
