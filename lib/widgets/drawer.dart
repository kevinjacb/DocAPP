import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: Text("Home"),
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: Text("Home"),
          onTap: null,
        )
      ],
    );
  }
}
