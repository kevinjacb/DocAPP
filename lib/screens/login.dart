import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/loginbutton.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State {
  @override
  Widget build(BuildContext context) {
    double HEIGHT = MediaQuery.of(context).size.height;
    double WIDTH = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      body: Container(
        height: HEIGHT,
        width: WIDTH,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bgimage.png"), fit: BoxFit.fill)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: HEIGHT * 0.1,
                  ),
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/icon.png'),
                  ),
                  SizedBox(
                    height: HEIGHT * 0.05,
                  ),
                  SizedBox(
                    height: HEIGHT * 0.03,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText("Login",
                          textStyle: GoogleFonts.zcoolKuaiLe(fontSize: 50),
                          speed: Duration(milliseconds: 200))
                    ],
                    // pause: Duration(seconds: 2),
                    repeatForever: true,
                  ),
                  SizedBox(
                    height: HEIGHT * 0.04,
                  ),
                  Container(
                    width: WIDTH * 0.9,
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
                    height: HEIGHT * 0.03,
                  ),
                  Container(
                    width: WIDTH * 0.9,
                    child: const TextField(
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
                    height: HEIGHT * 0.03,
                  ),
                  LoginButton(WIDTH * 0.3, HEIGHT * 0.06),
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
                onPressed: null,
                child: Text(
                  "Sign Up",
                  style:
                      GoogleFonts.robotoMono(fontSize: 15, color: Colors.cyan),
                ))
          ],
        ),
      ),
    );
  }
}
