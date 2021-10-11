import 'dart:ui';

import 'package:doc_app/variables/variables.dart';
import 'package:flutter/material.dart';
import '../widgets/registerbutton.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    Variables variables = Variables();
    return Scaffold(
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
                    Text("Create Account"),
                    SizedBox(
                      height: variables.HEIGHT * 0.02,
                    ),
                    Text("App Quote"),
                    SizedBox(
                      height: variables.HEIGHT * 0.07,
                    ),
                    Container(
                      width: variables.WIDTH * 0.9,
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Username',
                          hintText: 'Username',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: variables.HEIGHT * 0.03,
                    ),
                    Container(
                      width: variables.WIDTH * 0.9,
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Email',
                          hintText: 'Email',
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
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Password',
                          hintText: 'Password',
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
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Confirm Password',
                          hintText: 'Confirm Password',
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
