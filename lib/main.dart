import 'package:doc_app/variables/variables.dart';
import 'package:flutter/material.dart';
import 'screens/login.dart';

void main() {
  runApp(MaterialApp(home: DocApp()));
}

class DocApp extends StatefulWidget {
  const DocApp({Key? key}) : super(key: key);

  @override
  _DocAppState createState() => _DocAppState();
}

class _DocAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
