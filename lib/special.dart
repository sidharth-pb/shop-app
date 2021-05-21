import 'package:flutter/material.dart';

class Special extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
     physics: BouncingScrollPhysics(),
     scrollDirection: Axis.horizontal,
     child: Row(
     children: [
       buildContainer("Images/shops/cup2.jpg","Y Cups","\$60"),
       buildContainer("Images/shops/plate1.jpg","Floral","\$50"),
       buildContainer("Images/shops/cup3.jpg","X Cups","\$40"),

     ],
     ),
   );
  }
}

Container buildContainer(String img,String name,String price){
  return Container(
    height: 150,
    width: 350,
    color: Colors.white60,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(img),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(name,style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900
            ),),
            Spacer(),
            Text(price,style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900
            ),),

          ],
        )
      ],
    ),

  );
}