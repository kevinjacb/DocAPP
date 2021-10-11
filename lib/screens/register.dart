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
    double HEIGHT = MediaQuery.of(context).size.height;
    double WIDTH = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: HEIGHT * 0.07,
                ),
                Text("Create Account"),
                SizedBox(
                  height: HEIGHT * 0.02,
                ),
                Text("App Quote"),
                SizedBox(
                  height: HEIGHT * 0.07,
                ),
                Container(
                  width: WIDTH * 0.9,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      labelText: 'Username',
                      hintText: 'Username',
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
                          borderRadius: BorderRadius.all(Radius.circular(20))),
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
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      labelText: 'Password',
                      hintText: 'Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: HEIGHT * 0.03,
                ),
                Container(
                  width: WIDTH * 0.9,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      labelText: 'Confirm Password',
                      hintText: 'Confirm Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: HEIGHT * 0.03,
                ),
                RegisterButton(WIDTH * 0.3, HEIGHT * 0.06),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
