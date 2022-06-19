import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../constant/image.dart';

class PanggilanTileWidget extends StatelessWidget {
  const PanggilanTileWidget({
    Key? key,
  }) : super(key: key);

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
              const CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(me),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fahmi Dwi Syahputra',
                      style: textStyle.headline2?.copyWith(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.call_made,
                          size: 18,
                          color: Colors.green,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "19 Jun 22.10",
                          style: textStyle.bodyText1,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.phone, color: greenDark),
            ],
          ),
        ),
      ),
    );
  }
}
