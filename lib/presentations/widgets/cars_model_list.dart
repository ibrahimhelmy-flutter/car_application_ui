import 'package:Car_application_Ui/data/cars_data.dart';
import 'package:Car_application_Ui/presentations/widgets/roundContainer.dart';
import 'package:flutter/material.dart';

class BuildCarModelsList extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

 return
   Container(
     height: 90,

     child: ListView(
       physics: BouncingScrollPhysics(),
       reverse: true,
       scrollDirection: Axis.horizontal,
       children: [
         ...CarsData.carsDataList
             .map(
               (car) => Padding(
             padding:
             const EdgeInsets.symmetric(horizontal: 12.0),
             child: Column(
               children: [
                RoundContainer(borderWidth: 1,borderColor: Colors.red, child: Image.asset(car.image!,fit: BoxFit.cover,), radius: 60),
                 Text(car.model!)
               ],
             ),
           ),
         )
             .toList(),
       ],
     ),
   );
  }


}