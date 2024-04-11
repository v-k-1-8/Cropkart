import 'package:flutter/material.dart';
// import 'dart:js_interop';
import 'dart:ui';
import 'home.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferenrces/shared_preferences.dart';
// import 'add_store.dart';
// import 'package:cropkart_jb_techshila/check.dart';

// var npks=332,nps=123,nbf=154;
class Page2 extends StatefulWidget {
  // const Page1({super.key});
  Page2(this.name,this.number);
  var name;
  var number;

  @override
  State<Page2> createState() => _Page2State();

}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Column(
          // padding: EdgeInsets.fromLTRB (10,0,0,0),
          children: <Widget>[
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
    Text('Aggarwal Seeds',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.green)),
// SizedBox(width:40),
SizedBox(height:40),
    Text('Pulkit Stores',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.green)),
// SizedBox(width:40),
SizedBox(height:40),
    Text('Manik fertilisers',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.green)),
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
         
            SizedBox(height:10),
            // Text(
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
    );
    
  }
}
