import 'dart:ui';

import 'package:doc_app/variables/variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/registerbutton.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white);
    Variables variables = Variables();
    const iconColor = Colors.cyanAccent;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: variables.HEIGHT,
          width: variables.WIDTH,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bgimage.png'), fit: BoxFit.fill)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: variables.HEIGHT * 0.07,
                    ),
                    Text("Create Account",
                        style: GoogleFonts.righteous(
                            fontSize: 45, color: Colors.white)),
                    SizedBox(
                      height: variables.HEIGHT * 0.02,
                    ),
                    // Text("App Quote"),
                    SizedBox(
                      height: variables.HEIGHT * 0.07,
                    ),
                    Container(
                      width: variables.WIDTH * 0.9,
                      child: const TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            labelText: 'Username',
                            hintText: 'Username',
                            labelStyle: textStyle,
                            hintStyle: textStyle,
                            prefixIcon: Icon(
                              Icons.person,
                              color: iconColor,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: variables.HEIGHT * 0.03,
                    ),
                    Container(
                      width: variables.WIDTH * 0.9,
                      child: const TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Email',
                          labelStyle: textStyle,
                          hintStyle: textStyle,
                          hintText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: iconColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: variables.HEIGHT * 0.03,
                    ),
                    Container(
                      width: variables.WIDTH * 0.9,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Password',
                          hintText: 'Password',
                          labelStyle: textStyle,
                          hintStyle: textStyle,
                          prefixIcon: Icon(
                            Icons.password,
                            color: iconColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: variables.HEIGHT * 0.03,
                    ),
                    Container(
                      width: variables.WIDTH * 0.9,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Confirm Password',
                          hintText: 'Confirm Password',
                          prefixIcon: Icon(
                            Icons.password,
                            color: iconColor,
                          ),
                          labelStyle: textStyle,
                          hintStyle: textStyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: variables.HEIGHT * 0.03,
                    ),
                    RegisterButton(
                        variables.WIDTH * 0.3, variables.HEIGHT * 0.06),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
