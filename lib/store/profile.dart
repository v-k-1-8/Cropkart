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
class Page2 extends StatefulWidget {
  // const Page2({super.key});
  Page2(this.name,this.number);
var name;
var number;
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            children: <Widget>[

              ListTile(
                leading: Text('Name: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green)),
                 title: Text('${widget.name}'),
               ),


              ListTile(
                leading: Text('Address: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green)),
                title: Text('Not To Be Shown'),
              ),
              ListTile(
                leading: Text('Contact Number: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green)),
                title: Text('${widget.number}'),
              ),

            ],   ),
        );
  }
}