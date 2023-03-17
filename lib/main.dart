import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App Bar'),
        ),
        body: Column(
          children: const [
            Text('The Question!'),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
