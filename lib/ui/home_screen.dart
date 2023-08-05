import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/ui/quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const QuizScreen()));
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
                      minimumSize: MaterialStatePropertyAll(Size(double.infinity,40))
                  ),
                  child: const Text("شروع بازی")),
            ),
          ],
        ),
      )
    );
  }
}
