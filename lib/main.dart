import 'package:flutter/material.dart';
import 'package:myapp/question_screen.dart';
//import 'package:myapp/question_summary.dart';
//import 'package:myapp/results_screen.dart';
//import 'package:myapp/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.deepPurple],
        ),
      ),
      child: QuestionScreen(),
    ),
  ),),);
}
