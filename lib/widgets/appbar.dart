import 'package:doc_app/variables/variables.dart';
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
      title: const Text(
        "Hello Username",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          padding: const EdgeInsets.only(top: 15, right: 10),
          child: Stack(
            children: <Widget>[
              const Icon(
                Icons.notifications,
                size: 30,
              ),
              if (numberOfNotification > 0)
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      numberOfNotification.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 15, left: 4, top: 5),
          child: const Icon(Icons.messenger_sharp),
        )
      ],
    );
  }
}
