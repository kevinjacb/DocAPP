import 'package:doc_app/screens/room.dart';
import 'package:flutter/material.dart';

class Rooms extends StatefulWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    List room = [
      Room("Room1", "images/icon.png", "Participants: 99", "Category", true),
      Room("Room2", "images/icon.png", "Participants: 99", "Category", false),
      Room("Room3", "images/icon.png", "Participants: 99", "Category", false),
      Room("Room4", "images/icon.png", "Participants: 99", "Category", false),
      Room("Room5", "images/icon.png", "Participants: 99", "Category", false),
      Room("Room6", "images/icon.png", "Participants: 99", "Category", true),
      Room("Room7", "images/icon.png", "Participants: 99", "Category", false),
      Room("Room8", "images/icon.png", "Participants: 99", "Category", false),
      Room("Room9", "images/icon.png", "Participants: 99", "Category", false),
      Room("Room10", "images/icon.png", "Participants: 99", "Category", false),
      Room("Room11", "images/icon.png", "Participants: 99", "Category", false),
      Room("Room12", "images/icon.png", "Participants: 99", "Category", false),
    ];
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
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectedRoom(
                      room: room[index],
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.asset(room[index].image_path),
                  ),
                  title: Text(room[index].room_name),
                  trailing: Text(room[index].last_message_time),
                  subtitle: Row(
                    children: [
                      if (room[index].read)
                        Icon(
                          Icons.lock_outline_sharp,
                          color: Colors.red,
                        ),
                      if (!room[index].read)
                        Icon(
                          Icons.lock_open_sharp,
                          color: Colors.green,
                        ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(room[index].last_message_content),
                    ],
                  ),
                ),
              ),
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
