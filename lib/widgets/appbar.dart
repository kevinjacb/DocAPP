import 'package:doc_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    int numberOfNotification = 2;
    return AppBar(
      elevation: 0,
      leading: GestureDetector(
        child: Icon(Icons.menu),
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                //height: 100,
                child: Center(
                  child: AppDrawer(),
                ),
              );
            },
          );
        },
      ),
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      actions: [
        Container(
          padding: EdgeInsets.only(top: 15, right: 10),
          child: Stack(
            children: <Widget>[
              new Icon(
                Icons.notifications,
                size: 30,
              ),
              if (numberOfNotification > 0)
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
                    child: Text(
                      numberOfNotification.toString(),
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
