import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../widget/panggilan/panggilan_tile_widget.dart';

class PanggilanView extends StatelessWidget {
  const PanggilanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryDark,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const PanggilanTileWidget();
        },
      ),
    );
  }
}
