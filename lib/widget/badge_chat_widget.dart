import 'package:flutter/material.dart';

import '../constant/colors.dart';

class BadgeChatWidget extends StatelessWidget {
  const BadgeChatWidget({
    Key? key,
    required this.isActive,
    this.countUnRead = 20,
  }) : super(key: key);

  final bool isActive;
  final int countUnRead;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.all(countUnRead.toString().length == 2 ? 4 : 5),
      decoration: BoxDecoration(
        color: isActive ? greenDark : textColor,
        shape: BoxShape.circle,
      ),
      child: Text(
        "$countUnRead",
        textAlign: TextAlign.center,
        style: textStyle.headline2?.copyWith(
          color: isActive ? primaryDark : secondaryDark,
        ),
      ),
    );
  }
}
