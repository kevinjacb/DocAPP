import 'package:doc_app/screens/chats.dart';
import 'package:doc_app/screens/home.dart';
import 'package:doc_app/variables/variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedRoom extends StatefulWidget {
  const SelectedRoom({this.room, Key? key}) : super(key: key);
  final room;
  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<SelectedRoom> {
  PageController pageController = PageController(initialPage: 0);

  bool home = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(home: home),
              Container(
                height: Variables().HEIGHT * 0.9,
                child: PageView(
                  controller: pageController,
                  pageSnapping: true,
                  onPageChanged: (context) => setState(() {
                    home = !home;
                    print(home);
                  }),
                  children: [RoomMain(), Chats(room: widget.room)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoomMain extends StatelessWidget {
  const RoomMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomCard(
            height: Variables().HEIGHT * 0.2,
            width: Variables().WIDTH * 0.40,
            text: "Content 1",
          ),
          SizedBox(
            width: 30,
          ),
          CustomCard(
            height: Variables().HEIGHT * 0.2,
            width: Variables().WIDTH * 0.40,
            text: "Content 2",
          )
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.home, Key? key}) : super(key: key);
  final home;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Variables().HEIGHT * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back_rounded,
              color: Colors.cyan,
            ),
            Text(
              "Home",
              style: GoogleFonts.permanentMarker(
                  fontSize: (home) ? 35 : 25,
                  color: (home) ? Colors.cyan[900] : Colors.black),
            ),
            Text(
              "Chats",
              style: GoogleFonts.permanentMarker(
                  fontSize: (!home) ? 35 : 25,
                  color: (!home) ? Colors.cyan[900] : Colors.black),
            ),
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("Settings"),
                      ),
                      PopupMenuItem(
                        child: Text("Exit Room"),
                      )
                    ])
          ],
        ),
      ),
    );
  }
}
