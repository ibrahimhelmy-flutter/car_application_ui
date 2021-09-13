import 'package:Car_application_Ui/data/cars_data.dart';
import 'package:Car_application_Ui/presentations/screen/details_screen.dart';
import 'package:Car_application_Ui/presentations/widgets/carDetails.dart';
import 'package:flutter/material.dart';

class AllCarsGridView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.all(.50),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (c)=>DetailsScreen(model: CarsData.carsDataList[index],)));
          },
          child: CarDetails(
            isLarge: false,
            image: CarsData.carsDataList[index].image,
             model: CarsData.carsDataList[index]
          ),
        ),
      ),
      itemCount: CarsData.carsDataList.length,
    );
  }
}