import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vig/helpers/helpers.dart';

class Message {
  final String content;
  final Timestamp createdAt;
  final String userEmail;
  final String userName;
  final String to;

  Message(this.content, this.userEmail, this.createdAt, this.userName, this.to);

  factory Message.fromJson(jsonData){
    return Message(
      jsonData[kMessageContent],
      jsonData[kMessageUserEmail],
      jsonData[kMessageCreatedAt],
      jsonData[kMessageUserEmail],
      jsonData[kMessageTo]
    );
  }
}