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
            Icons.person,
            color: Colors.black,
          ),
          title: Text("Profile"),
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.black,
          ),
          title: Text("Settings"),
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.query_stats,
            color: Colors.black,
          ),
          title: Text("About Us"),
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.update,
            color: Colors.black,
          ),
          title: Text("Version"),
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
            color: Colors.black,
          ),
          title: Text("Log Out"),
          onTap: null,
        )
      ],
    );
  }
}
