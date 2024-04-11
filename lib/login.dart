// import 'package:cropkart/Store/Store_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:get/get.dart';
// import 'controller/auth_controller.dart';
import 'check.dart';
import 'store/Store_home.dart';
import 'admin/home.dart';

import 'user/user_home.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var loginType;
    TextEditingController countrycode = TextEditingController();
  var phonenumbercontroller = TextEditingController();
  var namecontroller = TextEditingController();
  // var controller = Get.put(AuthController());
List logins=[
  'Admin','Seller',"Buyer"
];
  FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(15),
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: MediaQuery.of(context).size.height*0.08,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Login/Register',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      color: Colors.black
                  ),

                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              Container(
                margin:const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.only(left: 8, top: 4, bottom: 4),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    padding: const EdgeInsets.only(right: 8),
                    hint: Text('Select type of user',style: TextStyle(color: Colors.grey,fontSize: 20),),
                    iconSize: 30,
                    elevation: 0,
                    value: loginType,
                    style: TextStyle(
                      color: Colors.white
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        loginType = newValue!; // Store the selected value
                      });
                    },
                    items: logins.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: ListTile(
                          title: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
              Container(
                height: 60,
                  margin:const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.only(left: 8, top: 4, bottom: 4),
          
                               decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(12))),    
                     child: Row(
                  children: [
                 
                    const Icon(
                      Icons.perm_identity_rounded,
                      color: Colors.grey,
                    ),
                    // const SizedBox(
                    //   width: 10,
                    // ),
                    Expanded(
                      child: TextField(
                          // focusNode: _focusNode,
                          controller: namecontroller,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Name',
                              
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                          ),
                          keyboardType: TextInputType.name,
                          style: TextStyle(fontWeight: FontWeight.w600 ,color: Colors.black,fontSize: 20),

                        // inputFormatters: <TextInputFormatter>[
                        //   FilteringTextInputFormatter.digitsOnly
                        // ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
              Container(
                height: 60,
                  margin:const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.only(left: 8, top: 4, bottom: 4),
          
                               decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(12))),    
                     child: Row(
                  children: [
                
                    const Icon(
                      Icons.phone_outlined,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                          focusNode: _focusNode,
                          controller: phonenumbercontroller,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Phone Number',
                              
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                          ),
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontWeight: FontWeight.w600 ,color: Colors.black,fontSize: 20),

                        // inputFormatters: <TextInputFormatter>[
                        //   FilteringTextInputFormatter.digitsOnly
                        // ],
                      ),
                    ),
                  ],
                ),
              ),  SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
             Container(margin:EdgeInsets.fromLTRB(10,0,0,0),child: Align(alignment : Alignment.centerLeft,
             child:Text('By clicking the Proceed button, you agree\nto the public offer',style: TextStyle(color:const Color.fromARGB(255, 158, 158, 158)),),),),
               SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
                     SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:
                     (){//print(phonenumbercontroller.text);
                    //  print(loginType);
                    //  print("helooooooooooooooooooooooooooo");
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  loginType=="Buyer"?userHome(namecontroller.text,phonenumbercontroller.text):loginType=="Seller"?storeHome(namecontroller.text,phonenumbercontroller.text):storeHomeAdmin(namecontroller.text,phonenumbercontroller.text)
                            ),
                          );
                    }
      //               ()async{

      //                   if (phonenumbercontroller.text.isEmpty) {
      //                     Text('Number Incorrect');
      //                   } else if (isValidPhoneNumber(
      //                       phonenumbercontroller.text)) {
      //                   await controller.signIn(loginType,
      //                         phonenumbercontroller.text, context);
      //                   } else {
      //  Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                         builder: (context) => Check(),
      //                       ),
      //                     );
                        
      //                   }
      //                   }


                    // },
                    
                    ,style: ElevatedButton.styleFrom(
                        backgroundColor:  Color.fromARGB(255, 93, 162, 71),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(6)))),
                    child: const Text(
                      'Proceed',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 22),
                    ),
                  ),
                ),





            ],
          ),
        ),
      ),
    ),
    );
  }
}
bool isValidPhoneNumber(String phonenumber) {
  RegExp regex = RegExp(r'^[0-9]{10}$');
  return regex.hasMatch(phonenumber);
}