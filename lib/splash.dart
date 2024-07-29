


import "dart:async";

import "package:flutter/material.dart";
import "package:flutter1/main.dart";

class splashscreen extends StatefulWidget{
  
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {


  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), () {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
     });
  }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child:
        Center(child: Text("PHOTO GALLERY",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),))
      ),
    );
  }
}