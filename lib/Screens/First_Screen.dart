import 'package:flutter/material.dart';
import '../Component/Nav_Screen.dart';
import './List_Component_Screen.dart';
import 'dart:math' as math;
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super (key: key);
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}
class _FirstScreenState extends State<FirstScreen> {
  bool isShowPass = false;
  var seeAll = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NavScreen(StreetLocation:"Mostafa St.",),
            SizedBox(height: 5),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  padding: EdgeInsets.all(8),
                  width: 189,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(width: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Home Address",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Mostafa st. No.2",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Street x12",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 2,
                    right: 10,
                  ),
                  padding: EdgeInsets.all(8),
                  width: 190,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )),
                      ),
                      Column(
                        children: [
                          SizedBox(width: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Home Address",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Mostafa st. No.2",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Street x12",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextFormField(
                  obscureText: isShowPass,
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                        icon:   Icon(isShowPass ? Icons.visibility_off : Icons.visibility) ,
                        onPressed: () {
                          isShowPass = !isShowPass;
                          setState(() {

                          });
                          print(isShowPass);
                        },
                      ),
                      hintText: "Search in Here",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                          )
                        )
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Deals of the Day"),
                  TextButton(
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ListComponentScreen()));
                      },
                      child: Text("See All($seeAll)",style: TextStyle(color: Colors.grey,)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(4.5),
                child: Expanded(
                      child:ListView .builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index)
                        {
                           return Column(
                              children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),                          borderRadius: BorderRadius.circular(12),
                                     ),
                                  ),
                                  SizedBox(height: 5),
                                  Text("data"),
                              ],
                          );
                        },
                     ),
                ),
              )
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Expanded(
                  child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 150,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(12),
                              ),
                           ),
                           Positioned(
                             top: -10,
                             child: FloatingActionButton(onPressed: (){},
                               backgroundColor: Colors.white,
                               mini: true,
                               child: Icon((Icons.favorite_border),color: Colors.grey),
                             ),
                           )
                          ],
                        ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 25),
                          Text("Summer Sun Ice Cream Pack"),
                          SizedBox(height: 5),
                          Text("5 Pieces"),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.location_pin),
                              SizedBox(width: 5),
                              Text("15 Minute Away"),
                            ],
                          ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text.rich(
                                TextSpan(
                                  children:[
                                    TextSpan(text: "\$12", style:
                                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20)
                                    ),
                                    TextSpan(text: "\$18", style:
                                    TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough)
                                    ),
                                  ],
                                )
                            )
                          ],
                        )
                      ],
                    ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 150,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Positioned(
                              top: -10,
                              child: FloatingActionButton(onPressed: (){},
                                backgroundColor: Colors.white,
                                mini: true,
                                child: Icon((Icons.favorite_border),color: Colors.grey,),
                              ),
                            )
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                SizedBox(height: 25),
                                Text("Summer Sun Ice Cream Pack"),
                                SizedBox(height: 5),
                                Text("5 Pieces"),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                  Icon(Icons.location_pin),
                                  SizedBox(width: 5),
                                  Text("15 Minute Away"),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text.rich(
                                      TextSpan(
                                        children:[
                                          TextSpan(text: "\$12", style:
                                           TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20)
                                          ),
                                          TextSpan(text: "\$18", style:
                                           TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough)
                                          ),
                                        ],
                                      )
                                  )
                                ],
                              )
                             ],
                        ),
                       ],
                      ),
                     ],
                   ),
                 ),
              ),
              ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  Container(
                    width: 390,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors. orange[200],
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text("Mega", style: TextStyle(color: Colors.redAccent,
                              fontSize: 25,
                              ),
                              ),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Text("WHOPP",style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  Positioned(
                                    right: -38,
                                    child: Text.rich(TextSpan(
                                      children:[
                                        TextSpan(
                                            text: "E",
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold,
                                            )
                                        ),TextSpan(
                                            text: "R",
                                            style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold,
                                            )
                                        )
                                      ] ,
                                    ),),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("\$ 17",style:
                                  TextStyle(color: Colors.redAccent,
                                      fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                  ),
                                  SizedBox(width: 15),
                                  Text("\$ 32",style:
                                  TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Text("Available until 24 December 2024",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                          ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
