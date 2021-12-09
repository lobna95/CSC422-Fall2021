import 'package:flutter/material.dart';
import '../model/user.dart';
import '../model/enums.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late User user;

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final ageController = TextEditingController();

  FocusNode myFocusNode = FocusNode();

  genders _gender = genders.male;

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
            TextFormField(
                controller: nameController,
                decoration: const InputDecoration(hintText: "Name"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter a Name";
                  }
                  return null;
                }),
            TextFormField(
                focusNode: myFocusNode,
                controller: ageController,
                decoration: const InputDecoration(hintText: "Age"),
                validator: (value) {
                  if (!isNumber(value)) {
                    return "Please Enter a number between 10 and 100";
                  }
                  return null;
                }),
            const SizedBox(height: 15),
            Text(
              "Gender",
              style: TextStyle(fontSize: 15, color: Colors.grey[600]),
            ),
            ListTile(
              title: const Text('Male', style: TextStyle(fontSize: 15)),
              leading: Radio(
                value: genders.male,
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value as genders;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Female', style: TextStyle(fontSize: 15)),
              leading: Radio(
                value: genders.female,
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value as genders;
                  });
                },
              ),
            ),
            ButtonBar(children: [
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    user = User(
                        name: nameController.text,
                        age: ageController.text,
                        gender: _gender);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content:
                              Text('Name: ${user.name}, Age: ${user.age}')),
                    );
                    Navigator.pushNamed(context, HomeScreen.homeRoute,
                        arguments: user);
                  }
                },
                child: const Text('Submit'),
              ),
            ]),
          ]),
        ));
  }

  bool isNumber(String? string) {
    if (string == null || string.isEmpty) {
      return false;
    }
    try {
      int number = int.tryParse(string)!;
      if (number <= 100 && number >= 10) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
