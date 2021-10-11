// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterButton extends StatefulWidget {
  double width, height;
  RegisterButton(this.width, this.height, {Key? key}) : super(key: key);
  @override
  _RegisterButtonState createState() =>
      _RegisterButtonState(this.width, this.height);
}

class _RegisterButtonState extends State<RegisterButton> {
  double width, height;
  _RegisterButtonState(this.width, this.height);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.blue, Colors.cyan]),
      ),
      child: Center(
        child: Text(
          "Register",
          style: GoogleFonts.robotoMono(
              fontSize: width * 0.15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
