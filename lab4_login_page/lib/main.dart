import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
            ),
            ListTile(
              title: Text("Item 2"),
            )
          ],
        ),
      ),
      body: MyHomeScreen(),
    ));
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
            ElevatedButton(onPressed: () {}, child: Text("Next"))
          ],
        )
      ],
    );
  }
}
