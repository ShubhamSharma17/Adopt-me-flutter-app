// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, sized_box_for_whitespace, unnecessary_null_comparison

import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_ui/authentication_pages/signup/signupwithemail.dart';
import 'package:pet_ui/homeScreen.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool passwordShow = true;

  bool value = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String txt = '';

  //function for snack
  void snackBarMethod(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      backgroundColor: Colors.blue,
      duration: Duration(milliseconds: 2000),
      dismissDirection: DismissDirection.up,
    ));
  }

  //fuction for login
  void signIn() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email == '' || password == '') {
      snackBarMethod(txt = 'Please enter credencials!');
      // log('Enter Right credencial!');
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        log('Log In!');
        snackBarMethod(txt = 'Loged In!');

        if (userCredential != null) {
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(
              context, CupertinoPageRoute(builder: (context) => HomeScreen()));
        }
      } on FirebaseException catch (e) {
        //snack bar
        log(e.code.toString());
        snackBarMethod(txt = e.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Align(
              alignment: Alignment(.01, -.83),
              child: Container(
                height: 175,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Transform.rotate(
                          angle: .8,
                          child: Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.redAccent[100],
                              boxShadow: const [BoxShadow(spreadRadius: 3)],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 3, top: 2),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent[100],
                              image: DecorationImage(
                                image: AssetImage(
                                  "Images/adopt1.png",
                                ),
                                // fit: BoxFit.cover,
                              ),
                              boxShadow: const [BoxShadow(spreadRadius: 3)]),
                        ),
                      ],
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      pause: Duration(milliseconds: 5000),
                      animatedTexts: [
                        WavyAnimatedText(
                          'Adopt Me',
                          textStyle: TextStyle(
                            fontFamily: 'PTSerif',
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(-.8, -.3),
              child: Container(
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Welcome back to our account",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(.0, .8),
              child: Container(
                margin: EdgeInsets.all(20),
                height: 400,
                // color: Colors.cyan[200],
                child: Column(children: [
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      hintText: 'Enter Email Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: passwordShow,
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordShow = !passwordShow;
                          });
                        },
                        icon: Icon(Icons.privacy_tip_sharp),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      labelText: "Password",
                      hintText: "Enter Your Password Credentials",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    child: Text("Log In"),
                    onPressed: () {
                      // checkValidation(context);
                      signIn();
                    },
                  ),
                  Container(
                    // color: Colors.amberAccent,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account yet?"),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ));
                            },
                            child: Text("Sign Up")),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  // margin: EdgeInsets.only(-),
                  height: 130,
                  decoration: BoxDecoration(
                      // color: Colors.deepOrange,
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://image.shutterstock.com/image-vector/cat-paws-banner-cute-simple-260nw-2075034151.jpg",
                    ),
                    colorFilter: ColorFilter.mode(Colors.orange, BlendMode.hue),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
