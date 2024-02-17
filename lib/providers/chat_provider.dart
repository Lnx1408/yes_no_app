import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Main lieber', fromWho: FromWho.me),
    Message(text: 'Estás en casa?', fromWho: FromWho.me),
  ];
}

Future<void> sendMessage(String text) async {
  //Metodo
}
