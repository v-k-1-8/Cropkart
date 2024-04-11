import 'package:flutter/material.dart';
// import 'dart:js_interop';
import 'dart:ui';
// import 'home.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'wishlist.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferenrces/shared_preferences.dart';
// import 'add_store.dart';
// import 'package:cr
import 'user_home.dart';
import 'checkout.dart';
class Page2 extends StatefulWidget {
  // const Page2({super.key});
Page2(this.name,this.number);
var name;var number;
// void initState() {
// history=0; 
//     // super.initState();
//   }
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
      children:<Widget>[
         SizedBox(height:20),
history!=0? Center(child:Text('Below is your last order status',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)):Center(child:Text('No order has been placed',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
    SizedBox(height:20),
   history!=0? Text('Order ID: 847456867456'):Text(''),
    SizedBox(height:20),
history!=0?Image.asset('assets/images/delivery_progress.png'):Text(''),
      ],
      );
      
  }
}