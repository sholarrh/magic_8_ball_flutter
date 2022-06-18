import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: magic_8_ball(),
      ),
    ),
  );
}

class magic_8_ball extends StatefulWidget {
  const magic_8_ball({Key key}) : super(key: key);

  @override
  State<magic_8_ball> createState() => _magic_8_ballState();
}

class _magic_8_ballState extends State<magic_8_ball> {
  int answer = 1;
  void random_answer() {
    setState(() {
      answer = (Random().nextInt(5)) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              random_answer();
            },
            child: Image.asset('images/ball$answer.png'),
          ),
        ),
      ]),
    );
  }
}
