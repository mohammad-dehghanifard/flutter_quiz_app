import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
   QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Icon> iconList = [];

  final List<String> question = [
    'جاوا اسکریپت کوچیک شده جاواس برای محیط وب؟',
    'تو 6 ماه میشه تمام زبان های برنامه نویسی رو یاد گرفت؟',
    'زبان برنامه نویسی فریم ورک فلاتر دارت هست؟',
  ];

  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // txt
               Expanded(
                  flex: 2,
                  child: Center(child: Text(question[questionIndex],style: const TextStyle(fontSize: 16),))),

              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if(questionIndex < 2){
                        questionIndex++;
                      }

                    });
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    minimumSize: MaterialStatePropertyAll(Size(double.infinity,40))
                  ),
                  child: const Text("True")),

              ElevatedButton(
                  onPressed: () {
                    if(questionIndex < 2){
                      questionIndex++;
                    }
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                    minimumSize: MaterialStatePropertyAll(Size(double.infinity,40))
                  ),
                  child: const Text("false")),
              Row(
                children: iconList
              )
            ],
          ),
        ),
      ),
    );
  }
}
