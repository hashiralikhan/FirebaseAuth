import 'package:appfluttter/potfolio.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Login extends StatefulWidget {




  
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {





    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
 void navigateFunction(){
  print("navigate");
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const Potfolio()));
    }
    void loginFunction() async {
      final String email = emailController.text;
      final String password = passwordController.text;
      try {
      FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      final UserCredential credential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
        navigateFunction();
        print('success gained');
      } catch (e) {
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
      }
     
    }

   
    return Scaffold(
     body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
               const CircleAvatar(
                backgroundImage: AssetImage('assets/pic1.png',),
                 backgroundColor: Colors.black,
                 radius: 100,
               ),
        
        
        const SizedBox(height: 20,),
             Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(controller: emailController,
          // controller: emailController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(), labelText: "Email"),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            return null;
          },
             ),
          ),
        
        
        
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
          border: OutlineInputBorder(), labelText: "Password"),
             
               
           ),
        ),

              ElevatedButton(onPressed: loginFunction
              
              , child:const Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}