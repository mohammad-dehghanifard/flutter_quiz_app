import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/quiz_manager.dart';
import 'package:flutter_quiz_app/data/quiz_model.dart';
import 'package:flutter_quiz_app/ui/result_screen.dart';

class QuizScreen extends StatefulWidget {
   const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  int showQuestion = 0; // نمایش سوال
  QuizModel? quiz; // سوال فعلی
  bool isFinish = false; // مشخص کردن وضعیت بازی
  int correctAnswer = 0; // تعداد جواب های صحیح

  Widget generateQuizBottom(int index){
    return ListTile(
      tileColor: Colors.black,
      title: Center(child: Text(quiz!.answerList![index],style: const TextStyle(color: Colors.white))),
      onTap: () {

        if(quiz!.correctAnswer == index){
          correctAnswer++;
        }

        if(showQuestion == QuizManager.getAllQuiz().length - 1){
          isFinish = true;
        }

        setState(() {
          if(showQuestion < QuizManager.getAllQuiz().length - 1){
            showQuestion++;
          }
        });

      },
    );
  }

  @override
  Widget build(BuildContext context) {

    quiz = QuizManager.getAllQuiz()[showQuestion];

    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              // txt
               Expanded(
                  flex: 2,
                  child: Center(child: Text(quiz!.questionTitle!,style: const TextStyle(fontSize: 16),))),
              ...List.generate(3, (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: generateQuizBottom(index),
              )),

              if(isFinish)
              ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ResultScreen(correctAnswer: correctAnswer)));
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.green),
                        minimumSize: MaterialStatePropertyAll(Size(double.infinity,40))
                    ),
                    child: const Text("مشاهده نتایج")),


            ],
          ),
        ),
      ),
    );
  }
}




