import 'package:cropkart/check.dart';
import 'package:flutter/material.dart';
// import 'dart:js_interop';
import 'dart:ui';
import 'package:cropkart/login.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'users.dart';
import 'package:flutter/widgets.dart';
import 'orders.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferenrces/shared_preferences.dart';
// import 'add_store.dart';
// import 'package:cropkart_jb_techshila/check.dart';
class Page0 extends StatefulWidget {
  // const Page0({super.key});
Page0(this.name,this.number);
var name;var number;

  @override
  State<Page0> createState() => _Page0State();
}

class _Page0State extends State<Page0> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Row(  children:<Widget>[SizedBox(width: 20),  Text('Welcome back, Admin ${widget.name}!',
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)],),
                  SizedBox(height: 10,),
                Row(  children:<Widget>[SizedBox(width: 20),  Text("Here's current Application overview",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),],),
                  SizedBox(height: 20,),
Center(child: Image.asset('assets/images/user_admin.png'),),
                  SizedBox(height: 20,),
Center(child:Image.asset('assets/images/visitor_admin.png')),
                  SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  setState(() {
                     Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageUser(widget.name,widget.number),
                            ),
                          );
                  });
                }, child: Text('Users',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.green))),
                  SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  setState(() {
                     Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageOrder(widget.name,widget.number),
                            ),
                          );
                  });
                }, child: Text('Orders',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.green))),
                  SizedBox(height: 20,),
                    // SizedBox(height:20),
                  ElevatedButton(onPressed: (){
                  setState(() {
                     Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                  });
                }, child: Text('Signout',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.green))),
                 SizedBox(height:20),

                ],
                ),
                );
               
  }
}