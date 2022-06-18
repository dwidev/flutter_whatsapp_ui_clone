import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/image.dart';
import '../widget/chat/chat_tile_widget.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryDark,
      child: ListView.builder(
        itemCount: _chatListDummy.length,
        itemBuilder: (context, index) {
          final data = _chatListDummy[index];
          return ChatTileWidget(data: data);
        },
      ),
    );
  }
}

class ChatModel {
  final String profile;
  final String name;
  final String message;
  final String date;
  final bool isRead;
  final int countUnRead;

  ChatModel({
    required this.profile,
    required this.name,
    required this.message,
    required this.date,
    required this.isRead,
    required this.countUnRead,
  });
}

final _chatListDummy = [
  ChatModel(
    profile: flutter,
    name: "Flutter Group Anjay",
    message: "#ASK izin beratanya para suhu, gmana caranya jadi keren",
    date: "13.30",
    isRead: false,
    countUnRead: 1,
  ),
  ChatModel(
    profile: me,
    name: "Dwi fahmi",
    message: "Clone ui whatsapp using flutter",
    date: "Kemarin",
    isRead: false,
    countUnRead: 1,
  ),
  ChatModel(
    profile: me,
    name: "Dwi fahmi",
    message: "Clone ui whatsapp using flutter",
    date: "Kemarin",
    isRead: false,
    countUnRead: 1,
  ),
  ChatModel(
    profile: flutter,
    name: "Flutter Group Anjay",
    message: "#ASK izin beratanya para suhu, gmana caranya jadi keren",
    date: "13.30",
    isRead: false,
    countUnRead: 1,
  ),
  ChatModel(
    profile: flutter,
    name: "Flutter Group Anjay",
    message: "#ASK izin beratanya para suhu, gmana caranya jadi keren",
    date: "13.30",
    isRead: false,
    countUnRead: 1,
  ),
  ChatModel(
    profile: me,
    name: "Dwi fahmi",
    message: "Clone ui whatsapp using flutter",
    date: "Kemarin",
    isRead: false,
    countUnRead: 1,
  ),
  ChatModel(
    profile: me,
    name: "Dwi fahmi",
    message: "Clone ui whatsapp using flutter",
    date: "Kemarin",
    isRead: false,
    countUnRead: 1,
  ),
];
