import 'package:doc_app/variables/variables.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: Variables().HEIGHT * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: Variables().WIDTH * 0.1,
                ),
                CircleAvatar(
                  child: Text("AH"),
                  radius: 35,
                ),
                SizedBox(
                  width: Variables().WIDTH * 0.1,
                ),
                Text("User name")
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
