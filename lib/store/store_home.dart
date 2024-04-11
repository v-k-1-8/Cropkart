import 'package:flutter/material.dart';
// import 'dart:js_interop';
import 'dart:ui';
import 'home.dart';
import 'package:flutter/cupertino.dart';
import 'products.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferenrces/shared_preferences.dart';
// import 'add_store.dart';
// import 'check.dart';
// import 'package:cropkart_jb_techshila/check.dart';
import 'profile.dart';
  
class storeHome extends StatefulWidget {
   storeHome(this.name,this.number);
  var name;
  var number;
  // namee=name;
  // 
  @override
  State<storeHome> createState() => _storeHomeState();
}

class _storeHomeState extends State<storeHome> {
  String sellerNumber="";
  // namee=
  _loadSavedString() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      sellerNumber = prefs.getString('phoneNumber') ?? '';
    });
  }
  @override

var currentPage=0;

var pages;
  void initState() {
  var  namee=widget.name;
var numberr=widget.number;
    
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
              });},icon: currentPage==2?Icon(Icons.person):Icon(Icons.person_outline),),
            label: 'Profile',  
            // backgroundColor: Colors.blue,  
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
      body:SingleChildScrollView(child:pages[currentPage]),
            
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