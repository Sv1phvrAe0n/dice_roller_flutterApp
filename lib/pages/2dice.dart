import 'package:flutter/material.dart';
import 'dart:math';

class TwoDice extends StatefulWidget {
  @override
  _TwoDiceState createState() => _TwoDiceState();
}

class _TwoDiceState extends State<TwoDice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff5D6D7E),
      appBar: AppBar(
        backgroundColor: Color(0xff34495E),
      centerTitle: true,
      title: Text(
      'Dice roller',
      style: TextStyle(
        color: Colors.white, fontFamily: 'Comfortaa',),
    ),
    ),
    body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset('images/dice$leftDiceNumber.png'),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Image.asset('images/dice$rightDiceNumber.png'),
                    ),
                  ]
              ),
            ),
            FlatButton(
              color: Color(0xff85929E),
              height: 25.0,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                changeDice();
              },
              child: Text('Roll',
                  style: TextStyle(fontSize: 30.0, fontFamily: 'Comfortaa')
              ),
            ),
          ]
      ),
    ));
  }
}
