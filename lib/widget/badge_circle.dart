import 'package:flutter/material.dart';

import '../constant/colors.dart';

class BadgeCircleWidget extends StatelessWidget {
  const BadgeCircleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        color: greenDark,
        shape: BoxShape.circle,
      ),
    );
  }
}
