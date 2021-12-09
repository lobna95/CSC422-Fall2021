import '/screens/firstScreen.dart';
import '/screens/secondScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen()
    },
  ));
}
