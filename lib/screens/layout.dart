import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import 'home.dart';
import 'calendar.dart';
import 'profile.dart';

//import '../variables/variables.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double HEIGHT = MediaQuery.of(context).size.height;
    List screen = [Home(), Calendar(), Profile()];

    return Scaffold(
      body: screen[index],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 5,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.green,
              label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Message",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.green,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
