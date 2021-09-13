
import 'package:Car_application_Ui/presentations/widgets/custom_row_builder.dart';
import 'package:flutter/material.dart';

class ConnectUsRow extends StatelessWidget {
  const ConnectUsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(bottom: 20,top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomRowBuilder([
            Text("احجز السياره"),
            Icon(
              Icons.book_outlined,
              size: 28,
            ),
          ], Colors.white, MediaQuery.of(context).size.width * .35,
              20, MainAxisAlignment.center, 5, Colors.black54),
          CustomRowBuilder([
            Text(
              " موقع السياره",
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.location_on_outlined,
              color: Colors.white,
              size: 28,
            ),
          ],
              Color.fromRGBO(80, 83, 108, 1.0),
              MediaQuery.of(context).size.width * .35,
              20,
              MainAxisAlignment.center,
              5),
          CircleAvatar(
            backgroundColor:
            Color.fromRGBO(28, 93, 253, 0.107843137254902),
            child: Icon(
              Icons.messenger_rounded,
              color: Colors.blue,
            ),
          ),
          CircleAvatar(
            backgroundColor:
            Color.fromRGBO(1, 215, 55, 0.1823529411764706),
            child: Icon(
              Icons.phone,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}