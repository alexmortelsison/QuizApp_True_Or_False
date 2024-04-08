import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_true_or_false/quiz_brain.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Quizzly(),
      ),
    );
  }
}

class Quizzly extends StatefulWidget {
  const Quizzly({super.key});

  @override
  State<Quizzly> createState() => _QuizzlyState();
}

class _QuizzlyState extends State<Quizzly> {
  int scoreKeeper = 0;
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();
    setState(
      () {
        if (quizBrain.isFinished() == true) {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            animType: AnimType.scale,
            title: 'Play Again?',
            desc: "Your score is $scoreKeeper!",
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ).show();

          quizBrain.reset();
          scoreKeeper = 0;
        } else {
          if (correctAnswer == userPickedAnswer) {
            scoreKeeper++;
          } else {}
          quizBrain.nextQuestion();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                quizBrain.getQuestionText(),
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 200),
              child: Text(
                "Score: $scoreKeeper",
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      checkAnswer(true);
                    },
                    child: Text(
                      "True",
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      checkAnswer(false);
                    },
                    child: Text(
                      "False",
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
