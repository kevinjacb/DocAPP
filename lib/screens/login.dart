import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: HEIGHT * 0.2,
              ),
              const CircleAvatar(
                child: Text("AH"),
              ),
              SizedBox(
                height: HEIGHT * 0.01,
              ),
              const Text("App Name"),
              SizedBox(
                height: HEIGHT * 0.03,
              ),
              const Text("Login"),
              SizedBox(
                height: HEIGHT * 0.02,
              ),
              Container(
                width: WIDTH * 0.9,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    //labelText: 'Email',
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
                    border: OutlineInputBorder(),
                    //labelText: 'Password',
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: HEIGHT * 0.03,
              ),
              LoginButton(WIDTH * 0.9, HEIGHT * 0.08),
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
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Have No Account?"),
            TextButton(onPressed: null, child: Text("Sign Up"))
          ],
        ),
      ),
    );
  }
}
