import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.onPressed, this.answerText, {super.key});

  final String answerText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
        child: Text(answerText),
      ),
    );
  }
}
