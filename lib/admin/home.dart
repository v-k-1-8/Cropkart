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
// import 'package:cropkart_jb/check.dart';
// import 'users.dart';
import 'home_admin.dart';
import 'stores.dart';
import 'products_admin.dart';
class storeHomeAdmin extends StatefulWidget {
   storeHomeAdmin(this.name,this.number);
  var name;
  var number;
  @override
  State<storeHomeAdmin> createState() => _storeHomeAdminState();
}

class _storeHomeAdminState extends State<storeHomeAdmin> {
  
var currentPage=0;

var pages;
  void initState() {
  var  namee=widget.name;
var numberr=widget.number;
    
   pages = [ 
   Page0(namee,numberr),
   Page1(namee,numberr), 
  Page2(namee,numberr), 
  // Page3(namee,numberr), 
  // Page2(namee,numberr), 
  // Page2(namee,numberr), 
    // const Page3(), 
  ]; 
    // _loadSavedString();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
 bottomNavigationBar: BottomNavigationBar( elevation: 3, backgroundColor: Colors.green,
        items:  <BottomNavigationBarItem>[  
// Text('fcc');

          BottomNavigationBarItem(  
            icon: IconButton(onPressed: (){
              setState(() {
                currentPage=0;
              }); },icon:currentPage==0?Icon(Icons.home_filled):Icon(Icons.home_outlined),),  
            label: "Home",  
            // backgroundColor: Colors.white.  
          ),  
          BottomNavigationBarItem(  
           
            icon: IconButton(onPressed: (){
              setState(() {
                currentPage=1;
              });
            },icon: currentPage==1?Icon(Icons.production_quantity_limits_rounded):Icon(Icons.production_quantity_limits_outlined),
           ),  
            label: 'Products',  
            // backgroundColor: Colors.yellow  
          ),  
          BottomNavigationBarItem(  
            icon: IconButton(  onPressed: (){
              setState(() {
                currentPage=2;
                // icon: Icons.store
              });},icon: currentPage==2?Icon(Icons.storefront_rounded):Icon(Icons.storefront_sharp),),
            label: 'Stores',  
            // backgroundColor: Colors.blue,  
          ),  
          // BottomNavigationBarItem(  
          //   icon: IconButton(  onPressed: (){
          //     setState(() {
          //       currentPage=2;
          //       // icon: Icons.store
          //     });},icon: currentPage==2?Icon(Icons.storefront_rounded):Icon(Icons.storefront_sharp),),
          //   label: 'Stores',  
          //   // backgroundColor: Colors.blue,  
          // ),  
          // BottomNavigationBarItem(  
          //   icon: IconButton(  onPressed: (){
          //     setState(() {
          //       currentPage=3;
          //       // icon: Icons.store
          //     });},icon: currentPage==3?Icon(Icons.supervised_user_circle_outlined):Icon(Icons.supervised_user_circle_rounded),),
          //   label: 'Users',  
          //   // backgroundColor: Colors.blue,  
          // ),  
        ],  
        // type: BottomNavigationBarType.shifting,  
        // currentIndex: _selectedIndex,  
        // selectedItemColor: Colors.black,  
        // iconSize: 40,  
        // onTap: _onItemTapped,  
        // elevation: 5  
      ),           
      appBar:AppBar(
        title: Text(" "),
      ),
      body: SingleChildScrollView( child:pages[currentPage]),
            
    ),
    );
  }
}