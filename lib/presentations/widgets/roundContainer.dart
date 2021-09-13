

import 'package:flutter/material.dart';

class RoundContainer extends StatelessWidget{
  double? radius,borderWidth;
  Widget ?child;
  Color? borderColor;
  RoundContainer({@required this.borderColor,@required this.child,@required this.radius,@required this.borderWidth});
  @override
  Widget build(BuildContext context) {
   return
     Container(
       width: radius,
       padding: EdgeInsets.all(2),
       height: radius,
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(100),
           border: Border.all(
               width: borderWidth!, color: borderColor!)),
       child: Padding(
         padding: const EdgeInsets.all(1.0),
         child: ClipRRect(
             borderRadius: BorderRadius.circular(100),
             child: Container(
                 width: radius,
                 height: radius,
                 child: child,

                 )),
       ),
     );
  }

}