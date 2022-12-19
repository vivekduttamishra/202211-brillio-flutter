import '../model/question.dart';

class Quiz{

  List<Question> questionBank; //all questions
  late List<Question> questions; //current question set
  late int currentIndex;
  late int totalAnswered;
  late int totalCorrectAnswered;

  Quiz(this.questionBank);

  start(int total){

    if(total>questionBank.length){
      total=questionBank.length;
      questions=questionBank;
    } else {
      questionBank.shuffle();
      questions=questionBank
                    .take(total)
                    .toList();
    }

    currentIndex=0;
    totalCorrectAnswered=0;
    for(var question in questions) {
      question.givenAnswerIndex=null;
    }

  }

  addResponse(int questionIndex, int answerIndex){

  }

  next(){

  }
  previous(){

  }

  get gameOver=>false;

  

}