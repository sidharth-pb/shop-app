import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Project extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'HosptalReservationSystem',

      home: Scaffold(
        body: Center(
          child: Text('hi')
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:  Color(0x4DFFFFFF),
          title: Text("VCare",style: TextStyle(
            fontSize: 20,
            letterSpacing: 2,
            fontWeight: FontWeight.w900,
            fontStyle:  FontStyle.italic,
            fontFamily: "Baby Font",
            color: Color(0xFF6A1B9A),
          ),),
          actions: [
             Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 shape: BoxShape.circle,
               ),
                 child:  IconButton(
                    icon: Icon(Icons.search),

             )
             ),
            IconButton(
              icon: Icon(Icons.open_in_browser),
              color: Colors.black,
            ),
            IconButton(
              icon: Icon(Icons.settings),
              color: Colors.black,
            )
          ],

        ),
        drawer: Drawer(

          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Profile", style : TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Baby Font",
                ),),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward),

              ),
              ListTile(
                title: Text("LogOut",style : TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Baby Font", ),),
                leading: Icon(Icons.account_circle),


              )
            ],
          ),
        ),
      )
    );
  }
}