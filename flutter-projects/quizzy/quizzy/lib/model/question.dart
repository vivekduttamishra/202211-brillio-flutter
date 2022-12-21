
// ignore_for_file: curly_braces_in_flow_control_structures

class Question{
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;
  late int? _givenAnswerIndex=null; //null by default

  Question(this.question, this.answers, this.correctAnswerIndex);

  int? get givenAnswerIndex => _givenAnswerIndex;

  set givenAnswerIndex(int? value){
    if(value !=null && value>=0 && value<answers.length)
      _givenAnswerIndex = value;
  }

  void reset(){
    _givenAnswerIndex = null;
  }

  get isAnswered=> givenAnswerIndex!=null;

  get isCorrectAnswer=> givenAnswerIndex==correctAnswerIndex;

  get correctAnswer => answers[correctAnswerIndex] ;

  get givenAnswer => givenAnswerIndex!=null 
                          ? answers[givenAnswerIndex!]
                          : "Not Answered";




}