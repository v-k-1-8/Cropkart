import 'package:flutter/material.dart';
// import 'dart:js_interop';
import 'dart:ui';
import 'home.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'shared';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_admin.dart';
import 'home.dart';
// import 'package:shared_preferenrces/shared_preferences.dart';
// import 'add_store.dart';
// import 'package:cropkart_jb_techshila/check.dart';
// import 'package:cropkart_jb/check.dart';

var npks=32,nps=3,nbf=54;
class PageOrder extends StatefulWidget {
  // const PageOrder({super.key});
  PageOrder(this.name,this.number);
  var name;
  var number;

  @override
  State<PageOrder> createState() => _PageOrderState();

}

class _PageOrderState extends State<PageOrder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   home:Scaffold(body:SingleChildScrollView(child: Column(
          // padding: EdgeInsets.fromLTRB (10,0,0,0),
          children: <Widget>[
            SizedBox(height:20),
            Card(elevation: 0,
              // elevation: 3,
              child: Text(
                "Here's a list of\nrecent orders!",
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
SizedBox(width:20),
Text('Product',style: TextStyle(fontSize: 20),),
SizedBox(width:30),
Text('Price',style: TextStyle(fontSize: 20)),
SizedBox(width:30),
Text('Units',style: TextStyle(fontSize: 20)),
SizedBox(width:30),
// Text('Add Units',style: TextStyle(fontSize: 20)),

          ],),
          SizedBox(height:10),
           Row(children: <Widget>[
SizedBox(width:20),
Column(
  children:<Widget>[
    Image.asset('assets/images/pumpkin_seeds.png',width: 50,),
    SizedBox(height:5),
    Text('Pumkin Seeds',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.green)),
  ]
),
// Text('Product',style: TextStyle(fontSize: 20),),
SizedBox(width:25),
Text('₹280',style: TextStyle(fontSize: 20)),
SizedBox(width:27),
Text('$npks',style: TextStyle(fontSize: 20)),
SizedBox(width:50),
// Row(children: <Widget>[


// IconButton(onPressed: (){
//   setState(() {
//    if(npks<100) npks++;
//   });
//   // Icons.remove
// }, icon: Icon(Icons.add_box_rounded)),
// SizedBox(width: 2,),

// IconButton(onPressed: (){
//   setState(() {
//    if(npks>0) npks--;
//   });
//   // Icons.add
  
// }, icon: Icon(Icons.remove_circle)),
// ],),
// Text('Add Units',style: TextStyle(fontSize: 20)),

         
           ],
          ),
// Text('Add Units',style: TextStyle(fontSize: 20)),

          // ],
          // ),
             
        

                  SizedBox(height: 20,),
            Row(children: <Widget>[
SizedBox(width:20),
Column(
  children:<Widget>[
    Image.asset('assets/images/pepper_seeds.png',width: 50,),
    SizedBox(height:5),
    Text('Pepper Seeds',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green)),
  ]
),
// Text('Product',style: TextStyle(fontSize: 20),),
SizedBox(width:25),
Text('₹265',style: TextStyle(fontSize: 20)),
SizedBox(width:27),
Text('$nps',style: TextStyle(fontSize: 20)),
SizedBox(width:50),
// Row(children: <Widget>[


// IconButton(onPressed: (){
//   setState(() {
//    if(nps<99) nps++;
//   });
//   // Icons.remove
// }, icon: Icon(Icons.add_box_rounded)),
// SizedBox(width: 3,),

// IconButton(onPressed: (){
//   setState(() {
//    if(nps>0) nps--;
//   });
//   // Icons.add
  
// }, icon: Icon(Icons.remove_circle)),
// ],),
// Text('Add Units',style: TextStyle(fontSize: 20)),

          ],
          ), 
             SizedBox(height: 20,),
            Row(children: <Widget>[
SizedBox(width:20),
Column(
  children:<Widget>[
    Image.asset('assets/images/bio_fertiliser.png',width: 70,height:70),
    SizedBox(height:15),
    Text('Bio fertiliser',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green),),
  ]
),
// Text('Product',style: TextStyle(fontSize: 20),),
SizedBox(width:25),
Text('₹630',style: TextStyle(fontSize: 20)),
SizedBox(width:27),
Text('$nbf',style: TextStyle(fontSize: 20)),
SizedBox(width:50),
// Row(children: <Widget>[


// IconButton(onPressed: (){
//   setState(() {
//    if(nbf<99) nbf++;
//   });
//   // Icons.remove
// }, icon: Icon(Icons.add_box_rounded)),
// SizedBox(width: 3,),

// IconButton(onPressed: (){
//   setState(() {
//  if(nbf>0)  nbf--;
//   });
//   // Icons.add
// }, icon: Icon(Icons.remove_circle)),
// ],),
// Text('Add Units',style: TextStyle(fontSize: 20)),

          ],
          ),
  SizedBox(height: 14,),
           ],),
            ),
    
              // ],)
        

            // ),
            // Card(
            //   elevation: 3,
            //   child: ListTile(
            //     leading: Image.asset(
            //       'images/maggie1.png',
            //       fit: BoxFit.fitWidth,
            //     ),
            //     title: Text(
            //         'Veg Maggie X ${nvm}\nPrice-${pvm}\nTotal-${tpvm = (nvm * pvm)}'),
            //     trailing: Wrap(
            //       spacing: 5,
            //       children: <Widget>[
            //         IconButton(
            //           onPressed: () {
            //             setState(() {
            //               nvm++;
            //             });
            //           },
            //           icon: CircleAvatar(
            //             child: Icon(Icons.add),
            //             backgroundColor: Colors.black,
            //           ),
            //         ),
            //         IconButton(
            //           onPressed: () {
            //             setState(() {
            //               if (nvm > 0) nvm--;
            //             });
            //           },
            //           icon: CircleAvatar(
            //             child: Icon(Icons.remove),
            //             backgroundColor: Colors.black,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   elevation: 3,
            //   child: ListTile(
            //     leading: Image.asset(
            //       'images/burger.png',
            //       fit: BoxFit.fitWidth,
            //     ),
            //     title: Text(
            //         'Veg Burger X ${nvb}\nPrice-${pvb}\nTotal-${tpvb = (nvb * pvb)}'),
            //     trailing: Wrap(
            //       spacing: 5,
            //       children: <Widget>[
            //         IconButton(
            //           onPressed: () {
            //             setState(() {
            //               nvb++;
            //             });
            //           },
            //           icon: CircleAvatar(
            //             child: Icon(Icons.add),
            //             backgroundColor: Colors.black,
            //           ),
            //         ),
            //         IconButton(
            //           onPressed: () {
            //             setState(() {
            //               if (nvb > 0) nvb--;
            //             });
            //           },
            //           icon: CircleAvatar(
            //             child: Icon(Icons.remove),
            //             backgroundColor: Colors.black,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   elevation: 3,
            //   child: ListTile(
            //     leading: Image.asset(
            //       'images/momos.png',
            //       fit: BoxFit.fitWidth,
            //     ),
            //     title:
            //         Text('Momos X ${nm}\nPrice-${pm}\nTotal-${tpm = nm * pm}'),
            //     trailing: Wrap(
            //       spacing: 5,
            //       children: <Widget>[
            //         IconButton(
            //           onPressed: () {
            //             setState(() {
            //               nm++;
            //             });
            //           },
            //           icon: CircleAvatar(
            //             child: Icon(Icons.add),
            //             backgroundColor: Colors.black,
            //           ),
            //         ),
            //         IconButton(
            //           onPressed: () {
            //             setState(() {
            //               if (nm > 0) nm--;
            //             });
            //           },
            //           icon: CircleAvatar(
            //             child: Icon(Icons.remove),
            //             backgroundColor: Colors.black,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   elevation: 3,
            //   child: ListTile(
            //     leading: Image.asset('assets/images/icon-main.png', fit: BoxFit.fitWidth),
            //     title: Text(
            //         'Masala Dosa X {nmd}\nPrice-{pmd}\nTotal-{tpmd = nmd * pmd}'),
            //     trailing: Wrap(
            //       spacing: 5,
            //       children: <Widget>[
            //         IconButton(
            //           onPressed: () {
            //             setState(() {
            //               // nmd++;
            //             });
            //           },
            //           icon: CircleAvatar(
            //             child: Icon(Icons.add),
            //             backgroundColor: Colors.black,
            //           ),
            //         ),
            //         IconButton(
            //           onPressed: () {
            //             setState(() {
            //               // if (nmd > 0) nmd--;
            //             });
            //           },
            //           icon: CircleAvatar(
            //             child: Icon(Icons.remove),
            //             backgroundColor: Colors.black,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   elevation: 3,
            //   child: ListTile(
            //     leading: Image.asset(
            //       'assets/images/icon-main.png',
            //       fit: BoxFit.fitWidth,
            //     ),
            //     title: Text(
            //         'Spring Roll X {nsr}\nPrice-{psr}\nTotal-{tpsr = nsr * psr}'),
            //     trailing: Wrap(
            //       spacing: 5,
            //       children: <Widget>[
            //         IconButton(
            //           onPressed: () {
            //             setState(() {
            //               // nsr++;
            //             });
            //           },
            //           icon: CircleAvatar(
            //             child: Icon(Icons.add),
            //             backgroundColor: Colors.black,
            //           ),
            //         ),
            //         IconButton(
            //           onPressed: () {
            //             setState(() {
            //               // if (nsr > 0) nsr--;
            //             });
            //           },
            //           icon: CircleAvatar(
            //             child: Icon(Icons.remove),
            //             backgroundColor: Colors.black,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   elevation: 3,
            //   child: ListTile(
            //     title: Text(
            //       'Total Price: {total = tpsr + tpmd + tpm + tpvb + tpvm}',
            //       style: TextStyle(
            //         fontSize: 50,
            //         fontWeight: FontWeight.bold,
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // ),
            // SizedBox(height:10),
  SizedBox(height:30),
              ElevatedButton(onPressed: (){
                  setState(() {
                     Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => storeHomeAdmin(widget.name,widget.number),
                            ),
                          );
                  });
                }, child: Text('Back to Home',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.green))),
            // Text(
            SizedBox(height:20),
            // Text(
            //   '(Only payment method available is COD) ',
            //   style: TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.w400,
            //   ),
            // ),
          ],))),
        );
  }
}
