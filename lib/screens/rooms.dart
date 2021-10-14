import 'package:flutter/material.dart';

class Rooms extends StatefulWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    List room = [Room("Room1", "images/icon.png", "15:09", "Nothing", false)];
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        title: Text(
          "Rooms",
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: room.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Image.asset(room[index].image_path),
            ),
            title: Text(room[index].room_name),
            trailing: Text(room[index].last_message_time),
            subtitle: Row(
              children: [
                if (room[index].read)
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                if (!room[index].read)
                  Icon(
                    Icons.check,
                  ),
                SizedBox(
                  width: 5,
                ),
                Text(room[index].last_message_content),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Room {
  String room_name, image_path, last_message_time, last_message_content;
  bool read;
  Room(this.room_name, this.image_path, this.last_message_time,
      this.last_message_content, this.read);
}
