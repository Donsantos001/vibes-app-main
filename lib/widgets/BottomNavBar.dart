import 'package:app/screens/chatPage.dart';
import 'package:app/screens/groupPage.dart';
import 'package:app/screens/homePage.dart';
import 'package:app/screens/messagePage.dart';
import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ChatPage(),
    GroupPage(),
    MessagePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mark_as_unread_rounded),
            label: "messages",
          ),
        ],
        // items: const <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.home),
        //     label: 'Home',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.business),
        //     label: 'Business',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.school),
        //     label: 'School',
        //   ),
        // ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
