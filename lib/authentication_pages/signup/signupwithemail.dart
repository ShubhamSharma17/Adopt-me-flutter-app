// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordemailController =
      TextEditingController();

  void signUp() async {
    String email = emailController.text.toString();
    String password = passwordController.text.toString();
    String confirmPassword = confirmPasswordemailController.text.toString();

    if (email == '' || password == '' || confirmPassword == '') {
      //snack bar
      log('Enter right credencials!');
    } else if (password != confirmPassword) {
      //snack bar
      log('Plaese enter right password');
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        //snack bar
        log('Account Created.... :)');
        if (userCredential != null) {
          Navigator.pop(context);
        }
      } on FirebaseException catch (e) {
        log(e.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up Page')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  labelText: "Email Address",
                  hintText: 'Enter Email Address',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  labelText: "Password",
                  hintText: 'Enter Password',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: confirmPasswordemailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  labelText: "Confirm Password",
                  hintText: 'Enter Confirm Password',
                ),
              ),
              SizedBox(height: 25),
              CupertinoButton(
                color: Colors.blue,
                child: Text('Create Account'),
                onPressed: () {
                  signUp();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
