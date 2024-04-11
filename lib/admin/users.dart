import 'package:flutter/material.dart';
// import 'dart:js_interop';
import 'dart:ui';
import 'home.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_admin.dart';
import 'home.dart';
// import 'package:shared_preferenrces/shared_preferences.dart';
// import 'add_store.dart';
// import 'package:cropkart_jb_techshila/check.dart';

// var npks=332,nps=123,nbf=154;
class PageUser extends StatefulWidget {
  // const PageUser({super.key});
  PageUser(this.name,this.number);
  var name;
  var number;

  @override
  State<PageUser> createState() => _PageUserState();

}

class _PageUserState extends State<PageUser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   home:Scaffold(body: SingleChildScrollView(child:  Column(
          // padding: EdgeInsets.fromLTRB (10,0,0,0),
          children: <Widget>[
          SizedBox(height:30),
            Card(elevation: 0,
              // elevation: 3,
              child: Text(
                "Here's a list of\nlisted Stores!",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                // textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 5,),
            Card(elevation: 8,
             child: Column(children: <Widget>[
SizedBox(height:40),
    Text('Mayank Aggarwal',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.green)),
// SizedBox(width:40),
SizedBox(height:40),
    Text('Shreyanka Patil',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.green)),
// SizedBox(width:40),
SizedBox(height:40),
    Text('Rohit Shah',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.green)),
SizedBox(height:40),    Text('Manav Gupta',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.green)),
SizedBox(height:40),    Text('Palak Zenon',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.green)),
SizedBox(height:40),    Text('Rohan Mehra',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.green)),
SizedBox(height:40),    Text('Harshit ken',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.green)),
SizedBox(height:40),    Text('Qafar Zain',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.green)),
SizedBox(height:40),
// SizedBox(width:40),
//   Row(children: <Widget>[
// SizedBox(width:20),
// Text('Product',style: TextStyle(fontSize: 20),),
// SizedBox(width:30),
// Text('Price',style: TextStyle(fontSize: 20)),
// SizedBox(width:30),
// Text('Units',style: TextStyle(fontSize: 20)),
// SizedBox(width:30),
// // Text('Add Units',style: TextStyle(fontSize: 20)),

//           ],),
         
            SizedBox(height:30),
              ElevatedButton(onPressed: (){
                  setState(() {
                     Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => storeHomeAdmin(widget.name,widget.number),
                            ),
                          );
                  });
                }, child: Text('Back to Home',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.green))),
            // Text(
            SizedBox(height:20),
            //   '(Only payment method available is COD) ',
            //   style: TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.w400,
            //   ),
            // ),
          ],
            )
    ),
    ],
    ))),
    );
    
  }
}
