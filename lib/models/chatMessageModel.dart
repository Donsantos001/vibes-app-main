import 'package:flutter/cupertino.dart';

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

class AnonMessage {
  String messages;
  String messageId;
  AnonMessage({required this.messages, required this.messageId});
}
