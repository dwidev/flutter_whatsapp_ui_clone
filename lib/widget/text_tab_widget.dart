import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../page/home_page.dart';
import 'badge_chat_widget.dart';
import 'badge_circle.dart';
import 'camera_tab_widget.dart';

enum TextTabType { chat, status, panggilan }

class TextTabWidget extends StatelessWidget {
  const TextTabWidget({
    Key? key,
    required this.isActive,
    required this.type,
  }) : super(key: key);

  final bool isActive;
  final TextTabType type;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    // dikali 2 karena tiap label ada jarak kanan dan kiri, dan dikali 4 karena jumbal tab ada 4
    const calculatePaddingLabelTab = ((labelPaddingTab * 2) * 4);
    final width = (size.width - widthCameraTab - calculatePaddingLabelTab) / 3;

    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              type.name.toUpperCase(),
              style: textStyle.headline2?.copyWith(
                color: isActive ? greenDark : textColor,
              ),
            ),
          ),
          const SizedBox(width: 5),
          if (type == TextTabType.chat)
            BadgeChatWidget(isActive: isActive)
          else if (!isActive)
            const BadgeCircleWidget()
        ],
      ),
    );
  }
}
