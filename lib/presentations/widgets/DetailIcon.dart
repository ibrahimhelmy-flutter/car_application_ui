import 'package:flutter/material.dart';

class DetailIcon extends StatelessWidget{
  double? padding,iconSize;
  Color ?color=Colors.black;
  String? icon,toptext,bottext;
  TextStyle? size;
  DetailIcon({@required this.color,@required this.size,@required this.padding,@required this.iconSize,@required this.icon,@required this.bottext,@required this.toptext});
  @override
  Widget build(BuildContext context) {
return
  Expanded(
    child: Padding(
      padding:  EdgeInsets.all( padding! ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: padding!),
        decoration: BoxDecoration(
            color: Color.fromRGBO(247, 247, 253, 1.0),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            ImageIcon(
              AssetImage(icon!),
              color: color!,
              size: iconSize,
            ),
            Text(
              toptext!,
              style: size,
              softWrap: true,
              maxLines: 1,
            ),
            Text(bottext!,style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    ),
  );
  }

}