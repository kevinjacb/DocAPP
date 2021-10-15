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
    List<ChatMessage> messages = [
      ChatMessage("Hello, Will", "receiver"),
      ChatMessage("How have you been?", "receiver"),
      ChatMessage("Hey Kriss, I am doing fine dude. wbu?", "sender"),
      ChatMessage("ehhhh, doing OK.", "receiver"),
      ChatMessage("Is there any thing wrong?", "sender"),
      ChatMessage("Is there any thing wrong?", "sender"),
      ChatMessage("Is there any thing wrong?", "sender"),
      ChatMessage("Is there any thing wrong?", "sender"),
      ChatMessage("Is there any thing wrong?", "sender"),
      ChatMessage("Is there any thing wrong?", "sender"),
      ChatMessage("Is there any thing wrong?", "sender"),
      ChatMessage("Is there any thing wrong?", "sender"),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.room.room_name),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                child: Text('Media'),
              ),
              PopupMenuItem(
                value: 1,
                child: Text('Settings'),
              ),
              PopupMenuItem(value: 2, child: Text('Exit Room')),
            ],
          ),
        ],
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.fill)),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 70.0),
                child: SingleChildScrollView(
                  child: ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(
                            left: 14, right: 14, top: 10, bottom: 10),
                        child: Align(
                          alignment: (messages[index].messageType == "receiver"
                              ? Alignment.topLeft
                              : Alignment.topRight),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (messages[index].messageType == "receiver"
                                  ? Colors.grey.shade200
                                  : Colors.blue[200]),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Text(
                              messages[index].messageContent,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    height: 70,
                    width: double.infinity,
                    color: Colors.transparent,
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(image: AssetImage("images/")),
                    // ),
                    child: Row(
                      children: <Widget>[
                        Ink(
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add_circle_rounded,
                              size: 40,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Message",
                                hintStyle: TextStyle(color: Colors.black54),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 19,
                          ),
                          backgroundColor: Colors.blue,
                          elevation: 0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage(this.messageContent, @required this.messageType);
}
