import 'package:flutter/material.dart';

class CustomRowBuilder extends StatelessWidget {
  double? _size, _radios, _padding = 8;
  MainAxisAlignment _alignment = MainAxisAlignment.center;
  Color? _bodycolor, _framecolor2;
  List<Widget>? items;

  CustomRowBuilder(
      this.items, this._bodycolor, this._size, this._radios, this._alignment,
      [@required this._padding, @required this._framecolor2]);

  @override
  Widget build(BuildContext context) {
    if (_padding == null) _padding = 5;
    return Container(
      width: _size,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: _bodycolor,
          borderRadius: BorderRadius.circular(_radios!),
          border: Border.all(
              width: _framecolor2 != null ? 1 : 0,
              color: _framecolor2 != null ? _framecolor2! : _bodycolor!)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: Row(mainAxisAlignment: _alignment, children: [
          ...items!.map((e) => Padding(
                padding: EdgeInsets.all(_padding!),
                child: e,
              ))
        ]),
      ),
    );
  }
}
