import 'package:flutter/material.dart';
import 'package:untitled21/meteo/main.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestion = 0;
  int score = 0;
  var quiz = [
    {
      "title": "Question 1",
      "answer": [
        {"answer": "Answer 11", "correct": true},
        {"answer": "Answer 12", "correct": false},
        {"answer": "Answer 13", "correct": false},
      ]
    },
    {
      "title": "Question 2",
      "answer": [
        {"answer": "Answer 21", "correct": false},
        {"answer": "Answer 22", "correct": true},
        {"answer": "Answer 23", "correct": false},
      ]
    },
    {
      "title": "Question 3",
      "answer": [
        {"answer": "Answer 31", "correct": false},
        {"answer": "Answer 32", "correct": false},
        {"answer": "Answer 33", "correct": true},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QUIZ',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: (this.currentQuestion >= quiz.length)
          ? Center(
              child: Text(
                "Score :${100 * (score / quiz.length)} %",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            )
          : ListView(
              children: <Widget>[
                Center(
                  child: RaisedButton(
                    color: Colors.deepOrangeAccent,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                ListTile(
                  title: Center(
                      child: Text(
                    "Question ${currentQuestion + 1}/${quiz.length}",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
                ListTile(
                  title: Text(
                    quiz[currentQuestion]['title'].toString(),
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ...(quiz[currentQuestion]['answer']
                        as List<Map<String, Object>>)
                    // ignore: missing_return
                    .map(
                  (answer) {
                    return ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          color: Colors.deepOrangeAccent,
                          textColor: Colors.white,
                          onPressed: () {
                            setState(() {
                              if (answer['correct'] == true) ++score;
                              //if (currentQuestion < quiz.length - 1)
                              ++this.currentQuestion;
                            });
                          },
                          child: Text(
                            answer['answer'].toString(),
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
    );
  }
}
