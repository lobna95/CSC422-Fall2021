import 'package:flutter/material.dart';
import '../model/user.dart';
import '../model/enums.dart';

class HomeScreen extends StatelessWidget {
  static const homeRoute = '/home';

  User user;

  HomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome ${user.name}'),
            Text('You are ${user.age} years old'),
            Text('You are a ${user.gender}'),
          ],
        ),
      ),
    );
  }
}
