import 'package:flutter/cupertino.dart';

const widthCameraTab = 30.0;

class CameraTabWidget extends StatelessWidget {
  const CameraTabWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: widthCameraTab,
      child: Icon(CupertinoIcons.camera_fill),
    );
  }
}
