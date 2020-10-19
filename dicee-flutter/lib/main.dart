import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(DicePage());
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static final randGen = Random();
  int leftDiceNum = randGen.nextInt(6) + 1, rightDiceNum = randGen.nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Roll both!'),
                onPressed: () => setState(() {
                  leftDiceNum = randGen.nextInt(6) + 1;
                  rightDiceNum = randGen.nextInt(6) + 1;
                }),
              ),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('images/dice$leftDiceNum.png'),
                      onPressed: () => setState(() {
                        leftDiceNum = randGen.nextInt(6) + 1;
                      }),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('images/dice$rightDiceNum.png'),
                      onPressed: () {
                        setState(() {
                          rightDiceNum = randGen.nextInt(6) + 1;
                        });
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
