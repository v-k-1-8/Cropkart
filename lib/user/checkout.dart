import 'package:flutter/material.dart';
// import 'dart:js_interop';
import 'dart:ui';
// import 'home.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'user_home.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferenrces/shared_preferences.dart';
// import 'add_store.dart';
// import 'package:cropkart_jb_techshila/check.dart';

class Page1 extends StatefulWidget {
  // const Page1({super.key});
  Page1(this.name,this.number);
  var name;
  var number;
// var npks,nps,nbf;
  @override
  State<Page1> createState() => _Page1State();

}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Column(
          // padding: EdgeInsets.fromLTRB (10,0,0,0),
          children: <Widget>[
            Card(elevation: 0,
              // elevation: 3,
              child: Text(
                "Here's a list of Products\nin your Cart!",
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
  Row(children: <Widget>[
SizedBox(width:15),
Text('Product',style: TextStyle(fontSize: 20),),
SizedBox(width:15),
Text('Price',style: TextStyle(fontSize: 20)),
SizedBox(width:15),
Text('Units',style: TextStyle(fontSize: 20)),
SizedBox(width:15),
Text('Units Price',style: TextStyle(fontSize: 20)),

          ],),
          SizedBox(height:10),
           Row(children: <Widget>[
SizedBox(width:15),
Column(
  children:<Widget>[
    Image.asset('assets/images/pumpkin_seeds.png',width: 25,),
    SizedBox(height:5),
    Text('Pumkin Seeds',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.green)),
  ]
),
// Text('Product',style: TextStyle(fontSize: 20),),
SizedBox(width:15),
Text('₹280',style: TextStyle(fontSize: 20)),
SizedBox(width:15),
Text('$npks',style: TextStyle(fontSize: 20)),
SizedBox(width:15),
Text('${npks*280}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
// Text('Add Units',style: TextStyle(fontSize: 20)),

         
           ],
          ),
// Text('Add Units',style: TextStyle(fontSize: 20)),

          // ],
          // ),
             
        

                  SizedBox(height: 20,),
            Row(children: <Widget>[
SizedBox(width:15),
Column(
  children:<Widget>[
    Image.asset('assets/images/pepper_seeds.png',width: 25,),
    SizedBox(height:5),
    Text('Pepper Seeds',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green)),
  ]
),
// Text('Product',style: TextStyle(fontSize: 20),),
SizedBox(width:15),
Text('₹265',style: TextStyle(fontSize: 20)),
SizedBox(width:15),
Text('$nps',style: TextStyle(fontSize: 20)),
SizedBox(width:15),Text('${nps*265}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
// ],),
// Text('Add Units',style: TextStyle(fontSize: 20)),

          ],
          ), 
             SizedBox(height: 20,),
            Row(children: <Widget>[
SizedBox(width:15),
Column(
  children:<Widget>[
    Image.asset('assets/images/bio_fertiliser.png',width: 25),
    SizedBox(height:15),
    Text('Bio fertiliser',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green),),
  ]
),
// Text('Product',style: TextStyle(fontSize: 20),),
SizedBox(width:15),
Text('₹630',style: TextStyle(fontSize: 20)),
SizedBox(width:15),
Text('$nbf',style: TextStyle(fontSize: 20)),
SizedBox(width:15),Text('${nbf*630}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
// Text('Add Units',style: TextStyle(fontSize: 20)),

          ],
          ),
  SizedBox(height: 14,),
           ],),
            ),
            SizedBox(height:20),
    Card(elevation: 3,
      child:Center(
        child:Column(children: <Widget>[
SizedBox(height:10),
        Text('Total Price : ${(npks*280)+(nps*265)+(nbf*630)}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
SizedBox(height:10),
        ],)
      )
    ),
             
            SizedBox(height:20),
      ElevatedButton(style:ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
  // backgroundBuilder: Colors.green, // foreground
  ),
      onPressed: (){
   setState(() {
      if((npks*280)+(nps*265)+(nbf*630)!=0)history=(npks*280)+(nps*265)+(nbf*630);print(history.toString());
       npks=0;nps=0;nbf=0;});
       currentPage=2;
          if(history!=0) Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => userHome(widget.name,widget.number),
                            ),
                          );
      }, child: Text('Place order',style: TextStyle(color: Colors.white,fontSize: 15),),
      ),SizedBox(height:20),
          ],
        );
  }
}
