import 'quiz_model.dart';

class QuizManager{
  QuizManager._();

 static List<QuizModel> getAllQuiz(){
    final QuizModel quiz1 = QuizModel(
      questionTitle: "نام سرادار ایرانی که موفق شد برای اولین بار رومی ها را شکست دهد؟",
      answerList: ["سورنا","بابک خرمدین","شاپور اول"],
      correctAnswer: 2
    );
    final QuizModel quiz2 = QuizModel(
        questionTitle: "کدام امپراطور روم خدمتکار مخصوص پادشاه ایران شد؟",
        answerList: ["مارک انتونی","کراسوس","والرین"],
        correctAnswer: 0
    );
    final List<QuizModel> data = [quiz1,quiz2];
    return data;
  }
}