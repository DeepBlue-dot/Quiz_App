class QuizQuestion {
  final String queston;
  final List<String> answers;
  final int answer;

  const QuizQuestion( this.queston,this.answers, this.answer);

  bool checkAnswer(int answ) {
    return answ == answer;
  }
  
}
