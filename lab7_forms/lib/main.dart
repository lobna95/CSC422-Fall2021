import 'package:flutter/material.dart';

import 'model/user.dart';
import 'screens/home_screen.dart';
import 'screens/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == HomeScreen.homeRoute) {
          final args = settings.arguments as User;

          return MaterialPageRoute(
            builder: (context) {
              return HomeScreen(user: args);
            },
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Signup')),
          ),
          body: SignUpScreen()),
    );
  }
}
