import 'package:Car_application_Ui/presentations/widgets/custom_row_builder.dart';
import 'package:flutter/material.dart';

Padding buildTextFieldSearch() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextFormField(
      enabled: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        label: Align(
          child: Text("ابحث عن سيارتك",
              style: TextStyle(color: Colors.black, fontSize: 20)),
        ),
        suffixIcon: Icon(
          Icons.search,
          size: 35,
          color: Colors.black87,
        ),
        border: OutlineInputBorder(),
      ),
    ),
  );
}

Image buildImage({required image}) {
  return Image.asset(image,
      fit: BoxFit.fill, height: 200, width: double.infinity);
}


Widget buildCityModelRow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top:8.0,bottom: 20),
    child: Container(
      width: MediaQuery.of(context).size.width * .9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomRowBuilder([
            Text(
              "امريكى",
              style: TextStyle(color: Colors.white),
            )
          ],
              Color.fromRGBO(65, 68, 91, 1.0),
              MediaQuery.of(context).size.width * .27,
              20,
              MainAxisAlignment.center),
          CustomRowBuilder([
            Text(
              "اسيوى",
              style: TextStyle(color: Colors.white),
            )
          ],
              Color.fromRGBO(65, 68, 91, 1.0),
              MediaQuery.of(context).size.width * .27,
              20,
              MainAxisAlignment.center),
          CustomRowBuilder([
            Text(
              "اوروبى",
              style: TextStyle(color: Colors.white),
            )
          ],
              Color.fromRGBO(65, 68, 91, 1.0),
              MediaQuery.of(context).size.width * .27,
              20,
              MainAxisAlignment.center)
        ],
      ),
    ),
  );
}

