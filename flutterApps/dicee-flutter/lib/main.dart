import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNb = 1;
  int rightDiceNb = 2;

  void randomDie() {
    leftDiceNb = Random().nextInt(6) + 1;
    rightDiceNb = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randomDie();
                });
              },
              child: Image.asset('images/dice$leftDiceNb.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randomDie();
                });
              },
              child: Image.asset('images/dice$rightDiceNb.png'),
            ),
          ),
        ],
      ),
    );
  }
}
