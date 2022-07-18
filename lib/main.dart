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
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDice=1;
  int rightDice=1;

  void changeFace()
  {
    leftDice=Random().nextInt(6)+1;
    rightDice=Random().nextInt(6)+1;
  }
  
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(children: <Widget>[
        //takes up multiple widgets
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState ((){
                changeFace();
              });
            },
            child: Image.asset('images/dice$leftDice.png'), //using this $ sign is called string interpolation.
          ),
        ), //expanded expands to entire area available
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState ((){
                changeFace();
              });
            },
            child: Image.asset('images/dice$rightDice.png'),
          ),
        )
      ]),
    );
  }
}


