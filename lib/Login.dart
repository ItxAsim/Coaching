import 'package:coatching/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
bool signed=false;
  final _formKey = GlobalKey<FormState>();
  Future<void> _signIn() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
      // Optionally, you can do something with userCredential.user
      print('User signed in: ${userCredential.user?.email}');
      signed=true;
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("login Successfully")));
      Navigator.push(context, MaterialPageRoute(builder: (context)=>myhome()));


    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      print('Error during sign in: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: (){
                  _signIn();
                  if (_formKey.currentState!.validate()) {
                    // do something
                  }


                },
                child: Text('Sign In'),
              ),
              SizedBox(height: 16.0),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
            },
            child: Text(
              "can't have any account ",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.amber,
                decoration: TextDecoration.underline,
              ),
            ),

            )
            ],
          ),
        ),
      ),
    );
  }
}
