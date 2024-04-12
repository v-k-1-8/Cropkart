import 'package:cropkart/login.dart';
import 'package:flutter/material.dart';
// import 'dart:js_interop';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferenrces/shared_preferences.dart';
// import 'add_store.dart';
// import 'package:cropkart_jb_techshila/check.dart';

class Page0 extends StatefulWidget {
  // const Page0({super.key});
Page0(this.name,this.number);
final name;
final number;
  @override
  State<Page0> createState() => _Page0State();
}

class _Page0State extends State<Page0> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(  children:<Widget>[SizedBox(width: 20),  Text('Welcome back, ${widget.name}!',
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)],),
                  SizedBox(height: 10,),
                Row(  children:<Widget>[SizedBox(width: 20),  Text("Here's your current sales overview",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),],),
                  SizedBox(height: 10,),
               
Center(child: Container( width: MediaQuery.of(context).size.width*0.9, child:Card(elevation: 8,
                    child: Column(mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Average Order Value'),
                      Text('0/-',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Keep working',style: TextStyle(color:Colors.green),),
                    ],
                    ),
                  ),),),
                      SizedBox(height: 10,),
Center(child: Container( width: MediaQuery.of(context).size.width*0.9, child:Card(elevation: 8,
                    child: Column(mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Total Orders'),
                      Text('0',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Keep working',style: TextStyle(color:Colors.green),),
                    ],
                    ),
                  ),),),
                  SizedBox(height: 10,),
Center(child: Container( width: MediaQuery.of(context).size.width*0.9, child:Card(elevation: 8,
                    child: Column(mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Lifetime Orders Value'),
                      Text('0/-',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Keep working',style: TextStyle(color:Colors.green),),
                    ],
                    ),
                  ),),),
                 SizedBox(height:20),
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

                  //    TextButton(onPressed: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Check(),
                  //   //ShopInfoForm(phone: sellerNumber)
                  //   ));
                  // }, child: const Text("Your products")),
                  // // Text('No Stores Registered'),
                  // TextButton(onPressed: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Check(),
                  //   //ShopInfoForm(phone: sellerNumber)
                  //   ));
                  // }, child: const Text("Add Proucts")),
                  // TextButton(onPressed: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Check(),
                  //   //ShopInfoForm(phone: sellerNumber)
                  //   ));
                  // }, child: const Text("View Current Orderes")),
                ],
              );
  }
}