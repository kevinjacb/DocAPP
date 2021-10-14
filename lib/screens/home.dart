import 'dart:ffi';

import 'package:doc_app/variables/variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/appbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Appbar(),
        preferredSize: Size.fromHeight(50),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomCard(
                  height: Variables().HEIGHT * 0.15,
                  width: Variables().WIDTH * 0.5,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomCard(
                  height: Variables().HEIGHT * 0.15,
                  width: Variables().WIDTH * 0.5,
                )
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({this.height, this.width, this.text, Key? key})
      : super(key: key);
  final height, width, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: Variables().HEIGHT * 0.01, left: Variables().HEIGHT * 0.01),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.black26, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text("Your Rooms",
              style: GoogleFonts.imFellEnglish(
                  fontSize: 30, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
