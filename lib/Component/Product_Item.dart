import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProductItem extends StatefulWidget {
  const ProductItem({Key? key}) : super (key: key);
  @override
  State<StatefulWidget> createState() => _ProductItemState();
}
class _ProductItemState extends State<ProductItem>{
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Turkish Strak",style: TextStyle(fontSize: 18),),
              SizedBox(height: 5),
              Text("173 Grams",style: TextStyle(fontSize: 16,color: Colors.blueGrey)),
              SizedBox(height: 5),
              Text("\$25",style: TextStyle(fontSize: 16,color: Colors.redAccent)),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      count++;
                    });
                  },
                  child: Icon(Icons.add,color: Colors.blue,),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB0EAF0),
                      padding: EdgeInsets.all(2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),
              SizedBox(width: 15),
              Text("$count", style: TextStyle(fontSize: 25),),
              SizedBox(width: 15),
              SizedBox(
                width: 40,
                child: ElevatedButton(
                  onPressed: (){
                    if(count!= 1) {
                      setState(() {
                        count--;
                      });
                    }
                  },
                  child: Icon(CupertinoIcons.minus, color: Colors.blue,),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB0EAF0),
                      padding: EdgeInsets.all(2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}