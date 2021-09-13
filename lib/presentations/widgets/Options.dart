import 'package:Car_application_Ui/model/car_model.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  TextStyle colors = TextStyle(
      color: Color.fromRGBO(55, 59, 85, 1.0),
      fontSize: 14,
      fontWeight: FontWeight.bold);

  Options(this.model);

  final CarModel model;

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.only(right: 10),
      height: 250,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          buildinfoRow(value: model.externalColor,name: "اللون الخارجى",icon: "assets/images/sedan-car-front.png"),
          buildinfoRow(value: model.internalColor,name: "اللون الداخلى",icon: "assets/images/sports-car.png"),
          buildinfoRow(value: model.chairType,name: "نوع المقعد",icon: "assets/images/seat.png"),
          buildinfoRow(value: model.sunroof,name: "فتحه السقف",icon: "assets/images/car (2).png"),
          buildinfoRow(value: model.backCamera,name: "كاميرا خلفيه",icon: "assets/images/cctv.png"),
          buildinfoRow(value: model.sensor,name: "سينسور",icon: "assets/images/car (1).png"),
          buildinfoRow(value: model.slinder,name: "سليندر",icon: "assets/images/gear (1).png"),
          buildinfoRow(value: model.motionVector,name: "ناقل الحركه",icon: "assets/images/gear.png"),
        ],
      ),
    );
  }

  Container buildinfoRow({required icon, required name, required value}) {
    return Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.all(2),
      color: Color.fromRGBO(247, 247, 253, 1.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              value.runtimeType!=String ? value?Icon(Icons.done):Icon(Icons.close):
              Text(
                value,
                style: colors,
                textDirection: TextDirection.rtl,
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                name,
                style: colors,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                width: 10,
              ),
              ImageIcon(
                AssetImage(icon),
                size: 20,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
