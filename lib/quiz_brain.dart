import 'package:quiz_true_or_false/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question(
      q: "Albert Einstein had trouble with mathematics when he was in school.",
      a: false,
    ),
    Question(
      q: "The vapor produced by e-cigarettes is actually water.",
      a: false,
    ),
    Question(
      q: "Anatomy considers the forms of macroscopic structures such as organs and organ systems.",
      a: true,
    ),
    Question(
      q: "Instant mashed potatoes were invented by Canadian Edward Asselbergs in 1962.",
      a: true,
    ),
    Question(
      q: "Tupac Shakur died due to complications from being stabbed in 1996.",
      a: false,
    ),
    Question(
      q: "In \"Star Trek\", Klingons are aliens.",
      a: true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber <= _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }
}
