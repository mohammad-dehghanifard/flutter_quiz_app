import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/ui/home_screen.dart';

class ResultScreen extends StatelessWidget {
   ResultScreen({super.key,required this.correctAnswer});
  late int correctAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("پاسخ های صحیح شما :"),
                Text(correctAnswer.toString()),

                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const HomeScreen()));
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.amber),
                        minimumSize: MaterialStatePropertyAll(Size(double.infinity,40))
                    ),
                    child: const Text("بازگشت به صفحه اصلی")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
