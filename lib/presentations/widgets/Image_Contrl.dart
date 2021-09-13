import 'package:flutter/material.dart';

class ImageControls extends StatelessWidget {
  String? _icon;
  ImageControls(this._icon);
  @override
  Widget build(BuildContext context) {
  return
      CircleAvatar(
        radius: 18,
        backgroundColor: Colors.grey,
        child: ImageIcon(
          AssetImage(
            _icon!
          ),
          color: Colors.black,
          size: 20,
        ),
      );
  }

}