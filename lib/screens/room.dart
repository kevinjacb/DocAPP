import 'package:flutter/material.dart';

class SelectedRoom extends StatefulWidget {
  SelectedRoom({required this.room, Key? key}) : super(key: key);
  final room;
  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<SelectedRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.room.room_name),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.message_rounded),
          )
        ],
        centerTitle: true,
      ),
    );
  }
}
