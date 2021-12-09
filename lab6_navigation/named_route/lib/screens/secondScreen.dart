// ignore: avoid_web_libraries_in_flutter
// ignore_for_file: use_key_in_widget_constructors, unused_import, unused_import, duplicate_ignore, prefer_const_constructors, file_names
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            {
              Navigator.pop(context);
            }
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Second Screen"),
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(Icons.arrow_back),
            label: Text("Navigate to Previous Screen")),
      )),
    );
  }
}
