import 'dart:ui';
import 'package:doc_app/variables/variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/loginbutton.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Container(
        height: Variables().HEIGHT,
        width: Variables().WIDTH,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bgimage.png"), fit: BoxFit.fill),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: Variables().HEIGHT * 0.1,
                  ),
                  Container(
                    width: Variables().WIDTH * 0.3,
                    height: Variables().WIDTH * 0.3,
                    child: const CircleAvatar(
                      //radius: 60,
                      backgroundImage: AssetImage('images/icon.png'),
                    ),
                  ),
                  SizedBox(
                    height: Variables().HEIGHT * 0.05,
                  ),
                  SizedBox(
                    height: Variables().HEIGHT * 0.03,
                  ),
                  Text(
                    "LOGIN",
                    style: GoogleFonts.righteous(
                        fontSize: 50, color: Colors.white),
                  ),
                  SizedBox(
                    height: Variables().HEIGHT * 0.04,
                  ),
                  Container(
                    width: Variables().WIDTH * 0.9,
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.lightGreenAccent,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelText: 'Email',
                        hintText: 'Email',
                        labelStyle: textStyle,
                        hintStyle: textStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Variables().HEIGHT * 0.03,
                  ),
                  Container(
                    width: Variables().WIDTH * 0.9,
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.lightGreenAccent,
                        ),
                        labelText: 'Password',
                        hintText: 'Password',
                        labelStyle: textStyle,
                        hintStyle: textStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Variables().HEIGHT * 0.03,
                  ),
                  LoginButton(
                      Variables().WIDTH * 0.3, Variables().HEIGHT * 0.06),
                  // const TextButton(
                  //   onPressed: null,
                  //   child: Text(
                  //     "Forget Password?",
                  //     textAlign: TextAlign.right,
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Have No Account?",
              style: GoogleFonts.andada(fontSize: 15, color: Colors.white),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Register(),
                  ),
                );
              },
              child: Text(
                "Sign Up",
                style: GoogleFonts.robotoMono(
                    fontSize: Variables().WIDTH * 0.03, color: Colors.cyan),
              ),
            )
          ],
        ),
      ),
    );
  }
}
