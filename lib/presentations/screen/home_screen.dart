import 'package:Car_application_Ui/presentations/widgets/custom_row_builder.dart';
import 'package:Car_application_Ui/presentations/widgets/all_cars_Grid_views.dart';
import 'package:Car_application_Ui/presentations/widgets/cars_model_list.dart';
import 'package:Car_application_Ui/presentations/widgets/custom_appbar.dart';
import 'package:Car_application_Ui/shard/commponent.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BuildCarModelsList(),
              buildImage(image: "assets/images/main1.png"),
              buildTextFieldSearch(),
              buildCityModelRow(context),
              AllCarsGridView(),
              buildImage(
                  image:
                      "assets/images/main2.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
