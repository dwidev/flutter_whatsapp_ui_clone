import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class StatusTileWidget extends StatelessWidget {
  const StatusTileWidget({
    Key? key,
    this.isMe = false,
    this.isRead = false,
    this.index = 1,
  }) : super(key: key);

  final bool isMe;
  final bool isRead;
  final int index;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: primaryDark,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.primaries[math.Random().nextInt(
                    Colors.primaries.length,
                  )],
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isRead ? textColor : greenDark,
                    width: 2.5,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isMe ? "Status Saya" : "Nama Kontak ${index + 1}",
                      style: textTheme.headline2?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      isMe ? "Baru saja" : "30 Menit yang lalu",
                      style: textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              if (isMe)
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz_outlined),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
