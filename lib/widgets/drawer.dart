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
    bool messages = true;
    return ListView(
      children: [
        Divider(
          indent: 125,
          endIndent: 125,
          color: Colors.black38,
          thickness: 4,
          //height: 3,
        ),
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
            Icons.person,
            color: Colors.black,
          ),
          title: Text("Profile"),
          onTap: null,
        ),
        ListTile(
          leading: Container(
            padding: EdgeInsets.only(top: 15, right: 10),
            child: Stack(
              children: <Widget>[
                new Icon(
                  Icons.message,
                  color: Colors.black,
                ),
                if (messages)
                  new Positioned(
                    right: 0,
                    child: new Container(
                      padding: EdgeInsets.all(1),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                    ),
                  )
              ],
            ),
          ),
          title: Text("Rooms"),
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.info,
            color: Colors.black,
          ),
          title: Text("About Us"),
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
