import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/model/quiz_question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  static int index = 0;
  QuizQuestion currentQuestions = questions[index];
  final List<int> allAnswers = [];

  void chooseAnswer(int ans) {
    allAnswers.add(ans);
    if (index < questions.length-1) {
      setState(() {
        index++;
        currentQuestions = questions[index];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> all = [
      Text(
        currentQuestions.queston,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
    ];

    for (var i = 0; i < currentQuestions.answers.length; i++) {
      all.add(ElevatedButton(
        onPressed: () {
          chooseAnswer(i);
        },
        child: Text(currentQuestions.answers[i]),
      ));
    }
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: all,
      ),
    );
  }
}
