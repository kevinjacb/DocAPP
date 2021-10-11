import 'package:flutter/material.dart';
import 'screens/login.dart';

void main() {
  runApp(const DocApp());
}

class DocApp extends StatefulWidget {
  const DocApp({Key? key}) : super(key: key);

  @override
  _DocAppState createState() => _DocAppState();
}

class _DocAppState extends State {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Login(),
      ),
    );
  }
}
