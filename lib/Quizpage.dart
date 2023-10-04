import 'package:flutter/material.dart';
import 'package:quizzler/Questions.dart';
import 'quiz_brain.dart';

Quizbrain quizbrain = Quizbrain();


class Quizpage extends StatefulWidget {
  const Quizpage({super.key});

  @override
  State<Quizpage> createState() => _QuizpageState();
}



class _QuizpageState extends State<Quizpage> {
  var isanswercorrect = true;
  List<Icon> scorekeeper = [];

  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                quizbrain.getQuestiontext(),
                style: const TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if(quizbrain.getanswer() == true)
                  {
                  scorekeeper.add(
                    const Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                  }
                  else
                  {
                    scorekeeper.add(const Icon(
                    Icons.close,
                    color: Colors.red,
                  ));
                  }
                  quizbrain.nextquestion();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              child: const Text("True"),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if(quizbrain.getanswer() == false)
                  {
                  scorekeeper.add(
                    const Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                  }
                  else
                  {
                    scorekeeper.add(const Icon(
                    Icons.close,
                    color: Colors.red,
                  ));
                  }
                  quizbrain.nextquestion();
                });
              },
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              child: const Text("False"),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: scorekeeper),
          ),
        )
      ],
    );
  }
}
