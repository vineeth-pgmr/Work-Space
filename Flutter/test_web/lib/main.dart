import 'package:flutter/material.dart';
import 'package:test_web/pages/question_answers.dart';

void main() {
  runApp(test_web);
}

class test_web extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'test_web',
      home: QuestionAnswersPage(),
    );
  }
}
