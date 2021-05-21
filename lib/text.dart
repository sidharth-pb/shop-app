import 'package:flutter/material.dart';

class Tex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Column(

     children: [
       SizedBox(
         height: 15,
       ),
       Padding(
         padding: EdgeInsets.all(10),
         child:Row(

           children: [

             Text("Holiday Special",style: TextStyle(
                 fontSize: 20,
                 fontFamily: "Baby Font"

             )),
             Spacer(),
             Text("View All",style: TextStyle(
                 fontSize: 16,
                 fontFamily: "Baby Font",
                 color:Colors.grey
             ))
           ],
         ),
       ),
     ],
   );
  }
}