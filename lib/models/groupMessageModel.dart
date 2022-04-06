import 'package:flutter/cupertino.dart';

class GroupMessage {
  String messageContent;
  String messageType;
  String senderId;
  GroupMessage(
      {required this.messageContent,
      required this.messageType,
      required this.senderId});
}

class GroupMembers {
  String UserId;
  GroupMembers({required this.UserId});
}
