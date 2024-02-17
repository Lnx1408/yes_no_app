import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScroolControler = ScrollController();
  List<Message> messageList = [
    Message(text: 'Main lieber', fromWho: FromWho.me),
    Message(text: 'Estás en casa?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    //Permite notificar al provider el cambio
    notifyListeners();
    moveScroolToBotton();
  }

  Future<void> moveScroolToBotton() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScroolControler.animateTo(chatScroolControler.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}
