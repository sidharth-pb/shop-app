import 'package:flutter/material.dart';

class Line extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          height:4,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
         margin: EdgeInsets.only(left: 25),
        ),
        Container(
          height:4,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft:Radius.circular(10) )
          ),
          margin: EdgeInsets.only(left: 25),
        ),
      ],
    );  }
}