import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../page/chat_view.dart';
import '../badge_chat_widget.dart';

class ChatTileWidget extends StatelessWidget {
  const ChatTileWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final ChatModel data;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Material(
      color: primaryDark,
      child: InkWell(
        onTap: () {},
        child: Container(
          width: size.width,
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(data.profile),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style: textStyle.headline2?.copyWith(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data.message,
                      style: textStyle.bodyText1,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    data.date,
                    style: textStyle.bodyText1?.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: greenDark,
                    ),
                  ),
                  const SizedBox(height: 5),
                  BadgeChatWidget(
                    isActive: true,
                    countUnRead: data.countUnRead,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
