import 'package:flutter/material.dart';
import 'dart:math';

class OneDie extends StatefulWidget {
  @override
  _OneDieState createState() => _OneDieState();
}

class _OneDieState extends State<OneDie> {
  int onlyDieNumber = 1;
  void changeDie() {
    setState(() {
      onlyDieNumber = Random().nextInt(6) + 1;
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
                  padding: const EdgeInsets.fromLTRB(60.0, 60.0, 60.0, 16.0),
                  child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset('images/dice$onlyDieNumber.png'),
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
                    changeDie();
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
