import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   const ResultScreen({required this.selectAnswers, super.key});

   final List<String> selectAnswers;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.deepPurple],
            ),
          ),
        ),
      ),
    );
  }
}
