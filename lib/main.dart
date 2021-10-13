import 'package:doc_app/variables/variables.dart';
import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/layout.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DocApp(),
    ),
  );
}

class DocApp extends StatefulWidget {
  //update this class in the future with StreamBuilder while
  const DocApp({Key? key}) : super(key: key); //working with user sign ins.

  @override
  _DocAppState createState() => _DocAppState();
}

class _DocAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
