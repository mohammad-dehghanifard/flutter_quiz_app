import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   ResultScreen({super.key,required this.correctAnswer});
  late int correctAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("پاسخ های صحیح شما :"),
              Text(correctAnswer.toString())
            ],
          ),
        ),
      ),
    );
  }
}
