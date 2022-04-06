import 'package:flutter/material.dart';
import 'package:app/models/chatUsersModel.dart';
import 'package:app/widgets/groupConvoList.dart';
import 'package:app/widgets/BottomNavBar.dart';

class GroupPage extends StatefulWidget {
  @override 
  _GroupPageState createState () => _GroupPageState();
  const GroupPage({Key? key}) : super(key :key);
}

class _GroupPageState extends  State<GroupPage>{
  List<GroupUsers> groupUsers = [
    GroupUsers(name: "Jane Russel", messageText: "Awesome Setup", imageURL: "images/userImage1.jpeg", time: "Now"),
    GroupUsers(name: "Glady's Murphy", messageText: "That's Great", imageURL: "images/userImage2.jpeg", time: "Yesterday"),
    GroupUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "images/userImage3.jpeg", time: "31 Mar"),
    GroupUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", imageURL: "images/userImage4.jpeg", time: "28 Mar"),
    GroupUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", imageURL: "images/userImage5.jpeg", time: "23 Mar"),
    GroupUsers(name: "Jacob Pena", messageText: "will update you in evening", imageURL: "images/userImage6.jpeg", time: "17 Mar"),
    GroupUsers(name: "Andrey Jones", messageText: "Can you please share the file?", imageURL: "images/userImage7.jpeg", time: "24 Feb"),
    GroupUsers(name: "John Wick", messageText: "How are you?", imageURL: "images/userImage8.jpeg", time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
            body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Groups",textAlign: TextAlign.center,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.deepPurple,),),
                    Container(
                      padding: EdgeInsets.only(left: 18,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.purple[200],size: 20,),
                          SizedBox(width: 2,),
                          Text("New Group",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
            padding: EdgeInsets.only(top: 16,left: 16,right: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.grey.shade600),
                prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        color: Colors.grey.shade100
                    )
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: groupUsers.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 16),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return GroupConvoList(
                name: groupUsers[index].name,
                messageText: groupUsers[index].messageText,
                imageUrl: groupUsers[index].imageURL,
                time: groupUsers[index].time,
                isMessageRead: (index == 0 || index == 3)?true:false,
              );
            },
          ),
          ],
        ),
      ),
    );
  }
}