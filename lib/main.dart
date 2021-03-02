import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.red, title: Center(child: Text('Dicee'))),
          backgroundColor: Colors.red,
          body: DicePage())));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceeNumber = 1;
  int rightDiceeNumber = 1;
  void dice() {
    setState(() {
      leftDiceeNumber = Random().nextInt(6) + 1;
      rightDiceeNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
            child: FlatButton(
                onPressed: () {
                  dice();
                },
                child: Image.asset('images/dice$leftDiceeNumber.png'))),
        Expanded(
            child: FlatButton(
                onPressed: () {
                  dice();
                },
                child: Image.asset('images/dice$rightDiceeNumber.png')))
      ]),
    );
  }
}
