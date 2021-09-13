import 'package:Car_application_Ui/model/car_model.dart';
import 'package:Car_application_Ui/presentations/widgets/custom_row_builder.dart';
import 'package:Car_application_Ui/presentations/widgets/Options.dart';
import 'package:Car_application_Ui/presentations/widgets/carDetails.dart';
import 'package:Car_application_Ui/presentations/widgets/connect_us.dart';
import 'package:Car_application_Ui/presentations/widgets/roundContainer.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final CarModel model;
  DetailsScreen({required this.model});

  @override
  Widget build(BuildContext context) {
    double bigframe = MediaQuery.of(context).size.width * .95;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              CarDetails(isLarge: true, image: model.image,model: model,),
              CustomRowBuilder([
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        "    د.ك",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Text(
                      "8,700",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "يوكن بحاله جيدة",
                  style: TextStyle(
                      color: Color.fromRGBO(55, 59, 85, 1.0),
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                )
              ], Theme.of(context).canvasColor, bigframe, 20,
                  MainAxisAlignment.spaceBetween),
              CustomRowBuilder([
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "مكفوله حتى 70000 كم",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    textAlign: TextAlign.end,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ImageIcon(
                    AssetImage("assets/images/verified-protection.png"),
                    size: 23,
                    color: Colors.white,
                  ),
                ),
              ], Color.fromRGBO(165, 89, 89, 1.0), bigframe, 20,
                  MainAxisAlignment.end),
              Options(model),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
                child: Text(
                  model.description!,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Color.fromRGBO(55, 59, 85, 1.0),
                    fontSize: 17,
                  ),
                ),
              ),
              CustomRowBuilder([
                Text("كل السيارات"),
                Text("يوكن للسيارات المعتمده"),
                RoundContainer(
                    borderWidth: 4,
                    borderColor: Colors.white,
                    child: Image.asset(
                      "assets/images/car2.jpg",
                      fit: BoxFit.cover,
                    ),
                    radius: 45)
              ], Color.fromRGBO(237, 241, 243, 1.0), bigframe, 20,
                  MainAxisAlignment.spaceBetween),
              buildTheSameModelsCar(),
              ConnectUsRow(),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTheSameModelsCar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: CarDetails(
            isLarge: false,
            image: "assets/images/car1.jpg",
            model: model,

          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: CarDetails(
            isLarge: false,
            image: "assets/images/car4.jpg",
            model: model,
          ),
        ))
      ],
    );
  }
}
