import 'package:flutter/material.dart';
import 'package:quiz_true_or_false/quizzly.dart';

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
