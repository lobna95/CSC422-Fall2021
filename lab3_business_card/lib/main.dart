import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Part1(), Part2(), Part3()],
          ),
        ));
  }
}

class Part1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.account_circle, size: 60),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lobna Shaheen"),
                Text("Experince Mobile Developer")
              ],
            )
          ],
        ));
  }
}

class Part2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("123 Main Street"),
          Text("(415) 555-0198"),
        ],
      ),
    );
  }
}

class Part3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.accessibility),
          Icon(Icons.timer),
          Icon(Icons.phone_android),
          Icon(Icons.phone_iphone)
        ],
      ),
    );
  }
}
