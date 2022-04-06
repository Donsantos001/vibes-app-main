import 'package:flutter/material.dart';
import 'package:app/models/groupMessageModel.dart';

class GroupDetailPage extends StatefulWidget {
  @override
  _GroupDetailPageState createState() => _GroupDetailPageState();
}

List<GroupMessage> messages = [
  GroupMessage(
      messageContent: "Hello, Will",
      messageType: "receiver",
      senderId: "7632"),
  GroupMessage(
      messageContent: "Hello, Will",
      messageType: "receiver",
      senderId: "3232"),
  GroupMessage(
      messageContent: "Hey Kriss, I am doing fine dude. wbu?",
      messageType: "receiver",
      senderId: "wwwww"),
  GroupMessage(
      messageContent: "Hello, Will",
      messageType: "receiver",
      senderId: "wwwww"),
  GroupMessage(
      messageContent: "Hello, Will",
      messageType: "receiver",
      senderId: "wwwww"),
];

List<GroupMembers> members = [
  GroupMembers(UserId: "UserId"),
  GroupMembers(UserId: "UserId"),
  GroupMembers(UserId: "UserId"),
  GroupMembers(UserId: "UserId"),
  GroupMembers(UserId: "UserId"),
];

class _GroupDetailPageState extends State<GroupDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            messages[index].senderId,
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurple),
                          ),
                          Text(messages[index].messageContent,
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ],
                      )),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              // ),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
