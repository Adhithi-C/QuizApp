import 'package:flutter/material.dart';
import 'package:quiz_app/store_quest.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  List question = [
    Quiz(question: 'Capital city of India is New Delhi', answer: true),
    Quiz(question: 'National bird of India is peacock', answer: true),
    Quiz(question: 'Chemical symbol of gold is Gu', answer: false),
    Quiz(question: "World's largest ocean is Pacific ocean", answer: true),
    Quiz(question: 'Jupiter is known as red planet', answer: false),
    Quiz(question: 'There are 12 players in a soccer team', answer: false),
    Quiz(question: 'J.K.Rowling wrote Harry Potter', answer: true),
    Quiz(question: 'Barometer measure atmospheric pressure', answer: true),
    Quiz(question: 'Adult human has 32 teeth', answer: true),
    Quiz(question: 'CEO of Tesla is Jeff Bezoz', answer: false)
  ];
  int index = 0;
  String result = '';
  void next_qus() {
    if (index < question.length) {
      setState(() {
        index++; //index=index+1
      });
    }
  }

  void check(bool answer) {
    //bool value gets stored into check function
    print(answer);
    if (answer == question[index].answer) {
      //answer gets compared to answer stored in a particular index value of the list 'questions'
      result = 'correct';
    } else {
      result = 'wrong';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question[index].question,
              style: TextStyle(
                fontSize: 40
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  check(true);
                  next_qus();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, minimumSize: Size(1, 45)),
                child: Text(
                  'True',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    check(false);
                    next_qus();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, minimumSize: Size(1, 45)),
                  child: Text(
                    'False',
                    style: TextStyle(color: Colors.black54),
                  )),
            ),
            Text(result)
          ],
        ),
      ),
    );
  }
}
