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
import 'delivery.dart';
// import 'package:cr
import 'checkout.dart';
var npks=0,nps=0,nbf=0;var history=0;int currentPage=0;
class userHome extends StatefulWidget {
   userHome(this.name,this.number);
  var name;
  var number;
  // namee=name;
  // 
  @override
  State<userHome> createState() => _userHomeState();
}

class _userHomeState extends State<userHome> {
  String sellerNumber="";
  // namee=
  _loadSavedString() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      sellerNumber = prefs.getString('phoneNumber') ?? '';
    });
  }
  @override

// var currentPage=widget.cp;
// if()
var pages;
  void initState() {
  var  namee=widget.name;
var numberr=widget.number;
    // currentPage=widget.cp;
   pages = [ 
   Page0(namee,numberr),
   Page1(namee,numberr), 
  Page2(namee,numberr), 
    // const Page3(), 
  ]; 
    _loadSavedString();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
 bottomNavigationBar: BottomNavigationBar(  backgroundColor: Colors.green,
        items:  <BottomNavigationBarItem>[  
// Text('fcc');
          BottomNavigationBarItem(  
            icon: IconButton(onPressed: (){
              setState(() {
                currentPage=0;
                // Icons.production_quantity_limits_rounded
              }); },icon:currentPage==0?Icon(Icons.production_quantity_limits ):Icon(Icons.production_quantity_limits),),  
            label: "Products/Wishlist",  
            // backgroundColor: Colors.white.  
          ),  
          BottomNavigationBarItem(  
           
            icon: IconButton(onPressed: (){
              setState(() {
                currentPage=1;
              });
            },icon: currentPage==1?Icon(Icons.check_box_outlined):Icon(Icons.check_box_rounded),
           ),  
            label: 'Checkout',  
            // backgroundColor: Colors.yellow  
          ),  
          BottomNavigationBarItem(  
           
            icon: IconButton(onPressed: (){
              setState(() {
                currentPage=2;
              });
            },icon: currentPage==2?Icon(Icons.drive_file_move_outline):Icon(Icons.drive_file_move),
           ),  
            label: 'Delivery Status',  
            // backgroundColor: Colors.yellow  
          ),  
     
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
      body:SingleChildScrollView(child: pages[currentPage]),
            
    ),
    );
          }
          // else {
          //   var data=snapshot.data!.docs;
          //   return const Center(
          //     child: Text("Shop is registered"),
          //   );
          // }
        
      // )
    
  
}