import 'package:flutter/material.dart';
import 'package:sidhu/Details.dart';
import 'package:sidhu/shops.dart';
import 'package:sidhu/special.dart';
import 'package:sidhu/text.dart';

class View extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            buildColumn( "Home",  true),
            buildColumn( "Men Wears",  false),
            buildColumn( "Women Wears",  false),
            buildColumn( "Gadgts",  false),
            buildColumn( "Decor",  false),


          ],
        ),
       SizedBox(
         height: 20,
       ),
       SingleChildScrollView(
         physics: BouncingScrollPhysics(),
         scrollDirection: Axis.horizontal,
         child: Row(
           children: [

             buildImage("Images/shops/cup1.jpg","B cups","\$ 75",context,"Philomina","No 20 Madrass lane"),
             buildImage("Images/shops/plate1.jpg","Floral 1","\$ 85",context,"Floral productions","No 1 Snehateeram ,north banglore"),
             buildImage("Images/shops/glass2.jpg","Godger","\$ 60",context,"Avacardo Manufactures","Thalathil Line, Gandhinagar 2nd Street"),
             buildImage("Images/shops/plate2.jpg","Ruby Plates","\$ 65",context,"Ruby MAnufactures","Thoppil lane, Ernakulam"),
           ],
         ),
       ),
      Line(),
        Tex(),
        Special()
      ],


    );
  }
}

Column buildColumn(String text,bool select){
  return Column(
    children: [
      Text(text,style: TextStyle(
          color: select ? Colors.black : Colors.grey[300],
         fontSize: 15,
      ),),
      SizedBox(
        height: 5,
      ),
     if(select==true)
        Container(
                height: 5,
                 width: 5,
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:Colors.black
                ),
                )
  else
      SizedBox()
    ],
  );
}

GestureDetector buildImage(String img,String title,String price,BuildContext context,String house,String add,){
  return  GestureDetector(
      onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return Details(img,title,price,house,add);
    }));
  },
    child: Padding(
    padding: EdgeInsets.all(8),
    child:Column(
      children: [
        Container(
          height: 200,
          width: 150,
          child: Image.asset(img),


        ),
        Text( title, style:TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w900
        )),
        SizedBox(
          height: 10,
        ),
        Text(price,style:TextStyle(

            fontWeight: FontWeight.w900
        )),
      ],
    )
  ));
}