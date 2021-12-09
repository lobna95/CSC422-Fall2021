import 'package:flutter/material.dart';

import '/extract_argments_screen.dart';
import '/second_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {'/': (context) => MyApp(), '/second': (context) => SecondScreen()},
    onGenerateRoute: (settings) {
      if (settings.name == PassArgumentsScreen.routeName) {
        final args = settings.arguments as ScreenArguments;

        return MaterialPageRoute(
          builder: (context) {
            return PassArgumentsScreen(
              title: args.title,
              message: args.message,
            );
          },
        );
      }
      assert(false, 'Need to implement ${settings.name}');
      return null;
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Title"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text("Item 1"),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  PassArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Item 1',
                    'Item 1 was tapped.',
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Item 2"),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  PassArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Item 2',
                    'Item 2 was tapped.',
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 40,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/diamond.png',
            ),
            Text('SHRINE'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        TextField(
          decoration: InputDecoration(
              filled: true, // To set background to light grey
              hintText: "Username",
              border: OutlineInputBorder()),
        ),
        TextField(
          decoration: InputDecoration(
              filled: true, hintText: "Password", border: OutlineInputBorder()),
        ),
        ButtonBar(
          children: [
            TextButton(onPressed: () {}, child: Text("Cancle")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Text("Next"))
          ],
        )
      ],
    );
  }
}
