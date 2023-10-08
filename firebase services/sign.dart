import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/main.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SignUpApp());
}
class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FirebaseAuthService auth=FirebaseAuthService();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
               
                String username = usernameController.text;
                String email = emailController.text;
                String password = passwordController.text;
                User? user= await auth.SignUpWithEmailAndPassword(email, password);
                if(user!=null){
                  print("successfull");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                }
                else{
                  print("error");
                }

                
                print('Username: $username');
                print('Email: $email');
                print('Password: $password');

                
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

class FirebaseAuthService {
  FirebaseAuth auth=FirebaseAuth.instance;
  Future<User?>SignUpWithEmailAndPassword(String email,String password)async {
try{
  UserCredential credential=await auth.signInWithEmailAndPassword(email: email, password: password);
  return credential.user;

}catch(e){
print("some error occured");
}
return null;

  }
}

