import 'package:flutter/material.dart';
import 'package:tserasp/signup.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: SafeArea(
       child: Container(
         width: double.infinity,
         height: MediaQuery.of(context).size.height,
         padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Column(
               children: [
                 Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                 SizedBox(height: 20,),
                 Text("Welcome to ABC ride.Order us from anywhere,we just meet u in speed of light.",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 15),)
               ],
             ),
             Container(
               height: MediaQuery.of(context).size.height /3 ,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/welcome.png"),
                 )
               ),
             ),
             Column(
               children: [
                 MaterialButton(
                     child: Text("Login",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 18,color: Colors.black),),
                     minWidth: double.infinity,
                     height: 60,
                     onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                     },
                     shape: RoundedRectangleBorder(
                         side: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(50)
                     ),
                     ),
                 SizedBox(height: 20,),
                 MaterialButton(
                   child: Text("Sign Up",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 18,color: Colors.white),),
                   minWidth: double.infinity,
                   height: 60,
                   color: Color(0xff08a35b),
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                   },
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(50)
                   ),
                 ),
               ],
             )
             ],

         ),

       ),
     ),
   );
  }
}

