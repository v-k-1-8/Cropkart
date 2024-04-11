import 'package:flutter/material.dart';
// import 'dart:js_interop';
import 'package:cropkart/login.dart';
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

class Page0 extends StatefulWidget {
  // const Page1({super.key});
  Page0(this.name,this.number);
  var name;
  var number;
// var npks,nps,nbf;
  @override
  State<Page0> createState() => _Page0State();

}

class _Page0State extends State<Page0> {
  @override
  Widget build(BuildContext context) {
    return Column(
          // padding: EdgeInsets.fromLTRB (10,0,0,0),
          children: <Widget>[
            Card(elevation: 0,
              // elevation: 3,
              child: Text(
                "Here's a list of Products \nin your Wishlist!",
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
Text('Add units',style: TextStyle(fontSize: 20)),

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

Row(children: <Widget>[


IconButton(onPressed: (){
  setState(() {
   if(npks<100) npks++;
  });
  // Icons.remove
}, icon: Icon(Icons.add_box_rounded)),
SizedBox(width: 2,),

IconButton(onPressed: (){
  setState(() {
   if(npks>0) npks--;
  });
  // Icons.add
  
}, icon: Icon(Icons.remove_circle)),
// Text('${npks*280}')
// Text('Add Units',style: TextStyle(fontSize: 20)),

         
           ],
          ),
          // ],
          // ),
// Text('Add Units',style: TextStyle(fontSize: 20)),

          ],
          ),
             
        

                  SizedBox(height: 20,),
            Row(children: <Widget>[
SizedBox(width:15),
Column(
  children:<Widget>[
    Image.asset('assets/images/pepper_seeds.png',width: 50,),
    SizedBox(height:5),
    Text('Pepper Seeds',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green)),
  ]
),
// Text('Product',style: TextStyle(fontSize: 20),),
SizedBox(width:15),
Text('₹265',style: TextStyle(fontSize: 20)),
SizedBox(width:15),
Text('$nps',style: TextStyle(fontSize: 20)),
SizedBox(width:15),

Row(children: <Widget>[


IconButton(onPressed: (){
  setState(() {
   if(nps<99) nps++;
  });
  // Icons.remove
}, icon: Icon(Icons.add_box_rounded)),
SizedBox(width: 3,),

IconButton(onPressed: (){
  setState(() {
   if(nps>0) nps--;
  });
  // Icons.add
  
}, icon: Icon(Icons.remove_circle)),
// Text('Add Units',style: TextStyle(fontSize: 20)),

          ],
          ), ],),
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
SizedBox(width:15),
Row(children: <Widget>[


IconButton(onPressed: (){
  setState(() {
   if(nbf<99) nbf++;
  });
  // Icons.remove
}, icon: Icon(Icons.add_box_rounded)),
SizedBox(width: 3,),

IconButton(onPressed: (){
  setState(() {
 if(nbf>0)  nbf--;
  });
  // Icons.add
}, icon: Icon(Icons.remove_circle)),
],),
// Text('Add Units',style: TextStyle(fontSize: 20)),

          ],
          ),
  SizedBox(height: 14,),
          //  ],
          //  ),
            // ),
    
            // SizedBox(height:10),
      
          ],
                    ),
            ),
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
                 SizedBox(height:20),            //  ),
                           ],
                           );
                           
  }
}
