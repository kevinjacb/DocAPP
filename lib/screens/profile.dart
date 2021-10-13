import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double HEIGHT = MediaQuery.of(context).size.height;
    double WIDTH = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: HEIGHT * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: WIDTH * 0.1,
                ),
                CircleAvatar(
                  child: Text("AH"),
                  radius: 35,
                ),
                SizedBox(
                  width: WIDTH * 0.1,
                ),
                Text("User name")
              ],
            )
          ],
        ),
      ),
    );
  }
}
