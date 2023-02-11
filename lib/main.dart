import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print('answer chosen!');
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Fist App!'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('answer 2'),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('answer 3');
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
