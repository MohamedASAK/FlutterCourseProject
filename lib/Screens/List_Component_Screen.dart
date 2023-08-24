import 'package:flutter/material.dart';
import '../Component/Product_Item.dart';
import '../Component/Nav_Screen.dart';
class ListComponentScreen extends StatelessWidget {
  const ListComponentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            NavScreen(StreetLocation: "Oxford Street"),
            SizedBox(height: 30),
            Text("Cart",style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 5),
            Expanded(
                child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context,index){
                  return ProductItem();
                },
             )
            )
          ],
        ),
      ),
    );
  }
}