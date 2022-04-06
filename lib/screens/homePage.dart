import 'dart:html';

import 'package:app/screens/chatPage.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/messagePage.dart';
import 'package:app/widgets/BottomNavBar.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.deepPurple,
      //   unselectedItemColor: Colors.grey.shade600,
      //   selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
      //   unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message),
      //       title: Text("Chats"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.group_work),
      //       title: Text("Groups"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.mark_as_unread_rounded),
      //       title: Text("messages"),
      //     ),
      //   ],
      // ),
    );
  }
}
