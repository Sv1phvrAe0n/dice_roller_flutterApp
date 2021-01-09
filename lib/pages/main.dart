import 'package:flutter/material.dart';
import 'package:roll_a_dice/pages/1die.dart';
import 'package:roll_a_dice/pages/home.dart';
import 'package:roll_a_dice/pages/2dice.dart';

void main() => runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/1die': (context) => OneDie(),
      '/2dice': (context) => TwoDice()
  },
  debugShowCheckedModeBanner: false,)
  );

