import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  const Quiz(this.answerQuestion, this.questions, this.questionIndex, {super.key});

  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(
            () => answerQuestion(answer['score']),
            answer['text'] as String,
          );
        })
      ],
    );
  }
}
