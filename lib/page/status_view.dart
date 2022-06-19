import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../widget/status/status_tile_widget.dart';

class StatusView extends StatelessWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      color: primaryDark,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StatusTileWidget(isMe: true),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                "Pembaruan terkini",
                style: textTheme.bodyText1?.copyWith(fontSize: 12),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) => StatusTileWidget(
                index: index,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                "Pembaruan yang telah dilihat",
                style: textTheme.bodyText1?.copyWith(fontSize: 12),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => StatusTileWidget(
                index: index + 4,
                isRead: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
