
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void regester() async {
      final String username = usernameController.text;
      final String email = emailController.text;
      final String password = passwordController.text;
      // try {
      // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      // final UserCredential credential = await firebaseAuth
      //     .signInWithEmailAndPassword(email: email, password: password);
      //   print('success gained');
      // } catch (e) {
      //   print(e);
      // }
      try {
      FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      final UserCredential credential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
        //print('success gained');
      } catch (e) {
       // print(e);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration page"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 200,
              child: TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Enter your username',
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Enter your E-mail',
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your password',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: regester,
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}
