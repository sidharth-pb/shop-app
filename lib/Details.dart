import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget{
  final String img;
  final String title;
  final String price;
  final String house;
  final String add;
  Details(
      this.img,
      this.title,
      this.price,
      this.house,
      this.add,
      );
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         Image.asset(
           img,
           height: MediaQuery.of(context).size.height/1.5,
           width: MediaQuery.of(context).size.width,
           fit: BoxFit.fill,
         ),
         IconButton(
           padding: EdgeInsets.only(left:20,top: 40),
           icon: Icon(Icons.close),
           onPressed: (){
             Navigator.of(context).pop();
           },
         ),
         Align(
           alignment: Alignment.bottomCenter,
           child: Container(
             height: MediaQuery.of(context).size.height/02.8,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
             ),
             child: Column(
               children: [
                 Expanded(
                   child: SingleChildScrollView(
                       padding: EdgeInsets.all(30),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [

                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(title,style: TextStyle(
                                 fontSize: 30,
                               ),),
                               Text(price,
                                 style: TextStyle(
                                   fontSize: 30,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),

                             ],
                           ),
                           SizedBox(
                             height: 20,
                           ),
                           Row(
                             children: [
                               Expanded(
                                   child:Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Size"),
                                       SizedBox(height: 5,),
                                       Text("16 OZ",style: TextStyle(fontSize: 22),)
                                     ],
                                   )
                               ),
                               Expanded(
                                   child:Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Qty"),
                                       SizedBox(height: 5,),
                                       Text("1",style: TextStyle(fontSize: 22),)
                                     ],
                                   )

                               ),
                             ],
                           ),
                           SizedBox(height: 20,),
                           Divider(thickness: 1.5,),
                           ListTile(
                             leading: Text("Details",style: TextStyle(fontSize: 18),),
                             trailing: IconButton(
                               icon: Icon(Icons.add, color: Colors.black,),
                               onPressed: (){
                                 print("Add1");
                               },

                             ),
                           ),
                           Divider(thickness: 1.5,),
                           ListTile(
                             leading: Text("Shipping",style: TextStyle(fontSize: 18),),
                             trailing: IconButton(
                               icon: Icon(Icons.add, color: Colors.black,),
                               onPressed: (){
                                 print("Add1");
                               },

                             ),
                           ),
                           Divider(thickness: 1.5,),
                         ],
                       )
                   ),
                 ),
                 Container(
                   height: 70,
                     width: MediaQuery.of(context).size.width,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Container(
                           height: 50,
                           width: 50,
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.white),
                             shape: BoxShape.circle
                           ),
                           child:IconButton(
                             icon: Icon(Icons.favorite_border,color: Colors.black,),
                           )
                         ),

                         FlatButton.icon(onPressed:(){
                           print("button presssed");
                         },
                           icon: Icon(Icons.shopping_cart),
                           label: Text("Add to Cart",style: TextStyle(fontSize: 18,fontFamily: "Baby Font",fontWeight: FontWeight.bold),),
                           color: Colors.pink[300],shape: StadiumBorder(),
                           padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/6,vertical: 10),)
                       ],
                     ),
                 )
               ],
             ),
           ),
         ),
       ],
     ),
       );
  }
}