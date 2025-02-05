//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/data/quizz.dart';
import 'package:myapp/question_summary.dart';
import 'package:myapp/start_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.selectAnswers, super.key});

  final List<String> selectAnswers; //user selected answer

  List<Map<String, Object>> getSummarydata() {
    List<Map<String, Object>> summaryData = [];

    for (int i = 0; i < selectAnswers.length; i++) {
      bool isCorrect = selectAnswers[i] == questions[i].answers[0];
      summaryData.add({
        'question_id': i,
        'question': questions[i].questions,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectAnswers[i],
        'is_correct': isCorrect
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final summary = getSummarydata();
    final totalMark =
        summary.where((data) => data['is_correct'] as bool).length;
    final totalQuestion = questions.length;
    //Copy from question_screen.dart
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
          ),
        ),
        child: SizedBox(
          child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You answered $totalMark out of $totalQuestion questions correctly',
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 201, 153, 251),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                QuestionSummary(
                  summary: getSummarydata(),
                ),
                const SizedBox(height: 30),
                TextButton.icon(
                  icon: const Icon(Icons.restart_alt,
                      color: Colors.white, size: 15),
                  label: const Text(
                    'Restart Quiz',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StartScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
