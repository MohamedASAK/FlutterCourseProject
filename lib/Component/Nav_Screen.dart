import 'package:flutter/material.dart';
class NavScreen extends StatelessWidget{
  NavScreen({Key? key,required this.StreetLocation}): super(key: key);
  String StreetLocation;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 130,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(20),
                )),
            child: Row(
              children: [
                Icon(Icons.location_on_rounded),
                Text(
                  StreetLocation,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            //profile
            width: 50,
            height: 50,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                )
            ),
          )
        ],
      );
  }

}