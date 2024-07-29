
import 'dart:js';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/HomePage.dart';
import 'package:flutter1/firebase_options.dart';

import 'package:flutter1/splash.dart';


Future<void>main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
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
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  signup(String email,String password) async {
    if(email==""&&password==""){
      print("enter email and password");
    }
    try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  ).then((value) => Navigator.push(context as BuildContext, MaterialPageRoute(builder: ((context) => HomePage()))));
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}

    }
    login(String email,String password) async {
      if(email==""&&password==""){
        print("enter email and password");

      }
      try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
    }
    /*await FirebaseAuth.instance.signOut();*/
    
      
  
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
                  controller: emailcontroller,
                    decoration: InputDecoration(
                        icon: Icon(Icons.email_outlined, color: Colors.black),
                        hintText: "Enter email",
                        labelText: "email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ))),
              ),
            ),
            Container(
              height: 90,
              width: 300,
              child: TextField(
                controller:passwordcontroller ,
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
                 signup(emailcontroller.text.toString(), passwordcontroller.text.toString());
                }, child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
            ),
            ElevatedButton(
                
                onPressed: (){
                 login(emailcontroller.text.toString(), passwordcontroller.text.toString());
                }, child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
           
            

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