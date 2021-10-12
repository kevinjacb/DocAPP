// ignore_for_file: unnecessary_this

import 'package:doc_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatefulWidget {
  double width, height;
  LoginButton(this.width, this.height, {Key? key}) : super(key: key);
  @override
  _LoginButtonState createState() => _LoginButtonState(this.width, this.height);
}

class _LoginButtonState extends State<LoginButton> {
  double width, height;
  _LoginButtonState(this.width, this.height);
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: widget.height,
    //   width: widget.width,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(30),
    //     gradient: const LinearGradient(
    //         begin: Alignment.topLeft,
    //         end: Alignment.bottomRight,
    //         colors: <Color>[Colors.white, Colors.cyan]),
    //   ),
    //   child: Center(
    //     child: Text(
    //       "Login",
    //       style: GoogleFonts.robotoMono(
    //           fontSize: width * 0.15, fontWeight: FontWeight.bold),
    //     ),
    //   ),
    // );
    return Material(
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {
          //UPDATE REQUIRED
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        },
        child: Ink(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.black38, Colors.cyanAccent]),
          ),
          child: Center(
            child: Text(
              "Login",
              style: GoogleFonts.robotoMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
