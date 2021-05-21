import 'package:flutter/material.dart';

class Expand extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("x"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("y",style: TextStyle(
                fontSize: 30,
              ),),
              Text("z",
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
    );
  }
}