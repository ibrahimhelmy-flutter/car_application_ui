import 'package:Car_application_Ui/model/car_model.dart';
import 'package:Car_application_Ui/presentations/widgets/DetailIcon.dart';
import 'package:Car_application_Ui/presentations/widgets/Image_Contrl.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  bool? isLarge;
  String? image;
  CarModel model;
  double? iconSize, space, padding;
  TextStyle size =
      TextStyle(fontSize: 13, color: Color.fromRGBO(147, 149, 167, 1.0));

  CarDetails(
      {@required this.isLarge, @required this.image, required this.model});

  @override
  Widget build(BuildContext context) {
    if (isLarge == true) {
      padding = 4;

      iconSize = 37;
      space = MediaQuery.of(context).size.width * .08;
    } else {
      padding = 1;
      size = TextStyle(fontSize: 10);
      iconSize = 17;
      space = 0;
    }
    return Stack(
      children: [
        Column(
          children: [
            Container(
                height: isLarge == false ? 140 : 320,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(image!, fit: BoxFit.fill)),
            Container(
              height: isLarge == false ? 39 : 80,
            )
          ],
        ),
        isLarge == true
            ? Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 6),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: ImageControls("assets/images/heart.png"),
                          ),
                          ImageControls("assets/images/share.png"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ImageControls(
                            "assets/images/arrow-pointing-to-right.png"),
                      ),
                    )
                  ],
                ),
              )
            : Positioned(
                right: 0,
                left: 0,
                top: 0,
                child: Container(
                  color: Color.fromRGBO(255, 255, 255, .7),
                  child: Text(
                    model.name!,
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
        Positioned(
          bottom: 15,
          right: space,
          left: space,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                isLarge == false
                    ? DetailIcon(
                        color: Colors.black,
                        size: size,
                        padding: padding,
                        iconSize: iconSize,
                        icon: "assets/images/verified-protection.png",
                        bottext: model.guaranteed,
                        toptext: "مكفوله ل")
                    : Container(),
                DetailIcon(
                    color: Color.fromRGBO(204, 148, 63, 1.0),
                    size: size,
                    padding: padding,
                    iconSize: iconSize,
                    icon: "assets/images/speedometer (2).png",
                    bottext: model.walkway,
                    toptext: isLarge == false ? "كم" : "المشى"),
                DetailIcon(
                    color: Color.fromRGBO(114, 139, 121, 1.0),
                    size: size,
                    padding: padding,
                    iconSize: iconSize,
                    icon: "assets/images/weekly-calendar.png",
                    bottext: model.manufacturingYear,
                    toptext: "سنه الصنع"),
                isLarge == false
                    ? DetailIcon(
                        color: Colors.blue,
                        size: size,
                        padding: padding,
                        iconSize: iconSize,
                        icon: "assets/images/vignette.png",
                        bottext: model.price,
                        toptext: "السعر")
                    : Container(),
                isLarge == true
                    ? DetailIcon(
                        color: Color.fromRGBO(77, 109, 145, 1.0),
                        size: size,
                        padding: padding,
                        iconSize: iconSize,
                        icon: "assets/images/car.png",
                        bottext: model.slinder,
                        toptext: "المحرك/سلندر")
                    : Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
