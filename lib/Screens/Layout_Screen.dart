import 'package:flutter/material.dart';
import 'List_Component_Screen.dart';
import 'First_Screen.dart';
class LayoutScreen extends StatefulWidget{
  LayoutScreen({Key? key}) : super(key: key);
  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}
class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget> screens =[
    FirstScreen(),
    ListComponentScreen(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value){
          selectedIndex = value;
          setState(() {});
        },
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.redAccent,size: 30,),
              label: "Home",

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,color: Colors.redAccent,size: 30),
              label: "Cart",
          ),
        ],
      ),
    );
  }
}