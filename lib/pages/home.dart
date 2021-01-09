import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff5D6D7E),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dice roller',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Comfortaa',
            ),
          ),
          backgroundColor: Color(0xff34495E),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Roll',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Comfortaa',
                      color: Colors.white)),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.fromLTRB(90.0, 0, 90.0, 0),
                child: FlatButton(
                  color: Color(0xffAEB6BF),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/1die');
                  },
                  child: Column(
                    children: [
                      Image.asset('images/1diebutton.png', height: 100.0),
                      Text(
                        '1 die',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Comfortaa',
                            color: Color(0xff212F3C)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.fromLTRB(90.0, 0, 90.0, 0),
                child: FlatButton(
                  color: Color(0xffAEB6BF),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/2dice');
                  },
                  child: Column(
                    children: [
                      Image.asset('images/2dicebutton.png', height: 100.0),
                      Text(
                        '2 dice',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Comfortaa',
                            color: Color(0xff212F3C)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
