import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'login.dart';
import 'check.dart';
import 'login.dart';
void main() {
  runApp(MaterialApp(home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
       child: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
SizedBox(height:40),
Center(child:Image.asset('assets/images/icon-main.png'),),
SizedBox(height:50),
Container(margin:EdgeInsets.all(0),padding:EdgeInsets.all(0),child: Image.asset('assets/images/start_page.png',fit: BoxFit.fitWidth,),),
SizedBox(height: 50,),
Center(child: Text('HAPPY FARMING!',
 style:TextStyle (
       shadows: [
            Shadow(
                 blurRadius:3.0,  // shadow blur
                  color: Colors.black, // shadow color
                  // offset: Offset(0.0,0.0), // how much shadow will be shown
            ),
        ],fontSize: 23,fontWeight: FontWeight.bold,
    ),
    
)),
SizedBox(height: 20,),
Center(child: Text('Empowering Agriculture, Digitally.\nYour One-Stop Shop for Farming Needs!\nUnlock the potential of technology for farmers\n through our e-commerce app that helps you\n cultivate success.',textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey),)),
        
     SizedBox(height: 50,), Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
SizedBox(width: 50,),
Image.asset('assets/images/Screen-toogle.png'),
// SizedBox(width: 10,),
// SizedBox(width: 0,),
      TextButton(onPressed: (){
        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
      }, child: Text('Next',style: TextStyle(color: Color.fromARGB(255, 93, 162, 71),fontSize: 20),),),
      ],)
          ],

        
      ),),
      );
  }
}
