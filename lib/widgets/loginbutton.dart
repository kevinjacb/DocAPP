import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  double width, height;
  LoginButton(this.width, this.height);
  @override
  _LoginButtonState createState() => _LoginButtonState(this.width, this.height);
}

class _LoginButtonState extends State<LoginButton> {
  double width, height;
  _LoginButtonState(this.width, this.height);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: const ElevatedButton(
        onPressed: null,
        child: Text("Login"),
      ),
    );
  }
}
