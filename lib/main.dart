
import 'package:flutter/material.dart';
import 'package:flutter1/HomePage.dart';

import 'package:flutter1/splash.dart';


void main(){
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,  
      title: 'Gallery',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
        
      ),
      body: Center(
            child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 90,
                width: 300,
                child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email_outlined, color: Colors.black),
                        hintText: "Enter Username",
                        labelText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ))),
              ),
            ),
            Container(
              height: 90,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.password_rounded,
                      color: Colors.black,
                    ),
                    hintText: "Enter Password",
                    labelText: "Password",border: OutlineInputBorder(borderRadius: BorderRadius.circular(11))),
              ),
            ),
            Container(
              height: 40,
              child: ElevatedButton(
                
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                }, child: Text("ENTER",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
            ),
           
            

          ]),
        )));
  }
}

      
      
      
      
      
      
      
      
      
      
      /*RichText(text: TextSpan(
        style: TextStyle(color: Colors.deepOrange),
        children :<TextSpan>[
      TextSpan(text: "hello" ,style: TextStyle(fontFamily: AutofillHints.telephoneNumberLocalSuffix,fontSize: 45,fontWeight: FontWeight.w500)),
      TextSpan(text: "hello",style: TextStyle(color: Colors.blueGrey,backgroundColor: Colors.lightBlue,fontWeight: FontWeight.w700,fontSize: 70) ),
        ]
      )
      )


        
    
       );
  }
}
      
      
      
      
      
      
      
      
      
      
      
      
      /*Wrap(
  direction: Axis.horizontal,
  spacing: 11,
  runSpacing: 50,
  children: [
    Container(
      height: 100,
      width: 200,
      color: Colors.lime,
      Multiple containers 
    ), ),
  ]
    )*/
//With Wrap Widget we can make scrollable widgets and also remove renderflex error 
//With sizedbox we can make gap or size widgets     
 /*RichText(text: TextSpan(
        style: TextStyle(color: Colors.deepOrange),
        children :<TextSpan>[
      TextSpan(text: "hello" ,style: TextStyle(fontFamily: AutofillHints.telephoneNumberLocalSuffix,fontSize: 45,fontWeight: FontWeight.w500)),
      TextSpan(text: "hello",style: TextStyle(color: Colors.blueGrey,backgroundColor: Colors.lightBlue,fontWeight: FontWeight.w700,fontSize: 70) ),
        ]
      )
      )*/
//various textstyle in one widget   
//font awesom icons for new icons .. download from flutter documentation
//positioned widget can be used with wrapping container to tell the positon of container on screen       
*/