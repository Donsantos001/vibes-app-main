import 'package:app/screens/chatDetailPage.dart';
import 'package:app/screens/chatPage.dart';
import 'package:app/screens/homePage.dart';
import 'package:app/widgets/conversationList.dart';
import 'package:flutter/material.dart';
import 'package:app/models/chatMessageModel.dart';
import 'package:app/screens/messageDetailPage.dart';

// class ChatDetailPage extends StatefulWidget {
//   @override
//   _ChatDetailPageState createState() => _ChatDetailPageState();
// }

class MessagePage extends StatefulWidget {
  @override
  _MessagePage createState() => _MessagePage();
  const MessagePage({Key? key}) : super(key: key);
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
  ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
  ChatMessage(
      messageContent: "Hey Kriss, I am doing fine dude. wbu?",
      messageType: "sender"),
  ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
  ChatMessage(
      messageContent: "Is there any thing wrong?", messageType: "sender"),
];
List<AnonMessage> message = [
  AnonMessage(messages: "messages", messageId: "messageId"),
  AnonMessage(messages: "messages", messageId: "messageId"),
  AnonMessage(messages: "messages", messageId: "messageId"),
  AnonMessage(messages: "messages", messageId: "messageId"),
  AnonMessage(messages: "messages", messageId: "messageId"),
  AnonMessage(
      messages:
          "messages,messagesmessagesmessagesmessagesmessagesmessagesmessagesmessagesmessages",
      messageId: "messageId"),
  AnonMessage(messages: "messages", messageId: "messageId"),
  AnonMessage(messages: "messages", messageId: "messageId"),
  AnonMessage(messages: "messages", messageId: "messageId"),
];

class _MessagePage extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.deepPurple,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 4,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.mark_as_unread_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            Text(
                              "Messages",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // centerTitle: true,
          // title: Text(
          //   "Messages",
          // ),
          // leading: IconButton(icon: Icon(Icons.mark_chat_read_rounded), onPressed: (){},),
          // // actions: <Widget>[
          // //   IconButton(
          // //     icon: Icon(
          // //       Icons.mark_chat_read_rounded,
          // //       color: Colors.white,
          // //     ),
          // //     onPressed: () {
          // //       // do something
          // //     },
          // //   )
          // // ],
        ),
        body: GroupDetailPage());
  }
}
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       elevation: 0,
//       automaticallyImplyLeading: false,
//       backgroundColor: Colors.deepPurple,
//       flexibleSpace: SafeArea(
//         child: Container(
//           padding: EdgeInsets.only(right: 16),
//           child: Row(
//             children: <Widget>[
//               IconButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: Icon(
//                   Icons.arrow_back,
//                   color: Colors.black,
//                 ),
//               ),
//               SizedBox(
//                 width: 2,
//               ),

//               SizedBox(
//                 width: 12,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       "Kriss Benwat",
//                       style: TextStyle(
//                           fontSize: 16, fontWeight: FontWeight.w600),
//                     ),
//                     SizedBox(
//                       height: 6,
//                     ),
//                     Text(
//                       "Online",
//                       style: TextStyle(
//                           color: Colors.grey.shade600, fontSize: 13),
//                     ),
//                   ],
//                 ),
//               ),
//               Icon(
//                 Icons.settings,
//                 color: Colors.black54,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//     body: Stack(
//       children: <Widget>[
//         ListView.builder(
//           itemCount: messages.length,
//           shrinkWrap: true,
//           padding: EdgeInsets.only(top: 10, bottom: 10),
//           physics: NeverScrollableScrollPhysics(),
//           itemBuilder: (context, index) {
//             return Container(
//               padding:
//                   EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
//               child: Align(
//                 alignment: (messages[index].messageType == "receiver"
//                     ? Alignment.topLeft
//                     : Alignment.topRight),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: (messages[index].messageType == "receiver"
//                         ? Colors.grey.shade200
//                         : Colors.blue[200]),
//                   ),
//                   padding: EdgeInsets.all(16),
//                   child: Text(
//                     messages[index].messageContent,
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//         Align(
//           alignment: Alignment.bottomLeft,
//           child: Container(
//             padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
//             height: 60,
//             width: double.infinity,
//             color: Colors.white,
//             // decoration: BoxDecoration(
//             //   borderRadius: BorderRadius.circular(10),
//             // ),
//             child: Row(
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: () {},
//                   child: Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       color: Colors.lightBlue,
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     child: Icon(
//                       Icons.add,
//                       color: Colors.white,
//                       size: 20,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                         hintText: "Write message...",
//                         hintStyle: TextStyle(color: Colors.black54),
//                         border: InputBorder.none),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 FloatingActionButton(
//                   onPressed: () {},
//                   child: Icon(
//                     Icons.send,
//                     color: Colors.white,
//                     size: 18,
//                   ),
//                   backgroundColor: Colors.blue,
//                   elevation: 0,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
