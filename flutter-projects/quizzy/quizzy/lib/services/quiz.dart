// ignore_for_file: curly_braces_in_flow_control_structures

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
      questions.shuffle();
    } else {
      questionBank.shuffle();
      questions=questionBank
                    .take(total)
                    .toList();
    }

    currentIndex=1;
    totalCorrectAnswered=0;
    for(var question in questions) {
      question.givenAnswerIndex=null;
    }

  }

  addResponse(int questionIndex, int answerIndex){
    if(questionIndex>=1 && 
       questionIndex<=questions.length 
       && !selectedQuestion.isAnswered){

      selectedQuestion.givenAnswerIndex=answerIndex;
      totalAnswered++;
      if(selectedQuestion.isCorrectAnswer)
        totalCorrectAnswered++;
      
    }
  }

  select(index){
    if(index>=1 && index<=questions.length){
      print("updating currentIndex to $index");
      currentIndex=index;
      return selectedQuestion;
    }
    
  }

  next(){
    if(currentIndex<questions.length){
      currentIndex++;
      return selectedQuestion;

    }
  }

  Question get selectedQuestion=> questions[currentIndex-1];

  previous(){
    if(currentIndex>1)
    {
      currentIndex--;
      return selectedQuestion;
    }
  }

  get gameOver=>totalAnswered==questions.length;

  get totalQuestions=> questions.length;

}