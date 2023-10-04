import 'package:flutter/material.dart';
import 'package:quizzler/Quizpage.dart';

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatefulWidget {
  const Quizzler({super.key});

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Quizpage(),
        )),
      ),
    );
  }
}
