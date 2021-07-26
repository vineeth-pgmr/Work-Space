import 'package:flutter/material.dart';
import 'package:iknowerverthing/pages/question_answers.dart';

void main() {
  runApp(IknowEverytingApp());
}

class IknowEverytingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IknowEverything',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: QuestionANswerspage(),
    );
  }
}
