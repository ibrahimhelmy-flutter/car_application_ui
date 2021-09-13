import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Color.fromRGBO(83, 86, 110, 1.0),
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor:Color.fromRGBO(83, 86, 110, 1.0),
          statusBarIconBrightness: Brightness.light),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ImageIcon(
              AssetImage("assets/images/bell.png"),
              color: Colors.white,
              size: 27,
            ),
            Positioned(
                right: 25,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 5.75,
                    backgroundColor: Colors.red,
                    child: Text(
                      "2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  radius: 7.5,
                ))
          ],
        ),
      ),
      actions: [Icon(Icons.menu, color: Colors.white, size: 26)],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}