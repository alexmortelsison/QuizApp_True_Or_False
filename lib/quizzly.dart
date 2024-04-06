import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quizzly extends StatefulWidget {
  const Quizzly({super.key});

  @override
  State<Quizzly> createState() => _QuizzlyState();
}

class _QuizzlyState extends State<Quizzly> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 26, 117, 191),
            Color.fromARGB(255, 22, 37, 63)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Question",
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Answer 1"),
            )
          ],
        ),
      ),
    );
  }
}
