import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';

class StartScreen extends StatelessWidget {
  final void Function(Widget screen) changeScreen;

  const StartScreen(this.changeScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(132, 255, 255, 255),
          ),
          const SizedBox(
            height: 70,
          ),
          const Text(
            "Learn Flutter The Fun Way",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              changeScreen(QuestionsScreen());
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
