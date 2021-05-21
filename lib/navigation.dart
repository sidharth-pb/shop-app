import 'package:flutter/material.dart';

class Navi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.grey[300],
              spreadRadius: 1,
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildContainer(Icons.person, false),
            buildContainer(Icons.shopping_basket, false),
            buildContainer(Icons.home, true),
            buildContainer(Icons.favorite, false),
            buildContainer(Icons.settings, false),
          ],
        ),
      ),
    );

  }
}

Container buildContainer(IconData icon,bool select){
  return Container(
    width:40,
    height: 40,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: select ? Colors.pink[200]: Colors.white,
          blurRadius: select ? 10: 0,
          spreadRadius: select ? 1: 0,
        )
      ],
      color: select ? Colors.pink[200]: Colors.white,
      shape: BoxShape.circle,
    ),
    child: Icon(icon,color: select ? Colors.white: Colors.black),
  );
}