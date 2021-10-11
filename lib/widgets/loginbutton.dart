import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.white, Colors.cyan])),
        child: Center(
            child: Text("Login",
                style: GoogleFonts.robotoMono(
                    fontSize: 20, fontWeight: FontWeight.bold))));
  }
}
