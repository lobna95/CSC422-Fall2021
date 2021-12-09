// ignore: avoid_web_libraries_in_flutter
// ignore_for_file: use_key_in_widget_constructors, unused_import, unused_import, duplicate_ignore, prefer_const_constructors, file_names
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            icon: Icon(Icons.arrow_forward),
            label: Text("Navigate to Next Screen")),
      )),
    );
  }
}
