import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidhu/navigation.dart';
import 'package:sidhu/view.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Navi(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white70,
          leading: Icon(Icons.menu,color: Colors.black,),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.circle

              ),

              child: IconButton(
                icon:Icon(Icons.search,size: 25,color:Colors.black),

              ),
            ),


          ],

        ),
        body:Column(
          children: [
            Row(
              children: [
                SizedBox(width: 15,),
                Text("Shop",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "Baby Font"
                ),),
                SizedBox(width: 10,),
                Text("Application",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: "Baby Font"
                ),),
              ],
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 15,
                ),
                buildFlatbutton("Home Decore",true,"Button 1 Pressed"),
                SizedBox(width: 10,),
                buildFlatbutton("Bath & Baby ",false, "Button 2 pressed"),
                SizedBox(width: 10,),
                buildFlatbutton("Beauty",false,"Button 3 pressed"),

              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 18
                    )
                  ]
                ),
                child:View()
              ),
              ),
              ],

            )


      ),
    );
  }
}

FlatButton buildFlatbutton(String text,bool select,String button){

    return FlatButton(
      onPressed: (){
        print(button);

      },
      child: Text(
        text,
        style: TextStyle(
            color: select ? Colors.white: Colors.black
        ),
      ),
      shape: StadiumBorder(),

      color: select ? Colors.pink[200]:Colors.grey[300]
  );
}
