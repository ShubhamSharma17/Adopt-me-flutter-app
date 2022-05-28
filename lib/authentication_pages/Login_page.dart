// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:pet_ui/Routes.dart';
import 'package:pet_ui/authentication_pages/signup/signupwithemail.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool passwordShow = true;

  final _formKey = GlobalKey<FormState>();
  checkValidation(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homePage);
    }
  }

  bool value = false;

  Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Do you want to exit'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text('No'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text('Yes'),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height,
              color: Colors.white,
            ),
            Align(
              alignment: Alignment(.01, -.83),
              child: Container(
                height: 175,
                // color: Colors.green,
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
                              // borderRadius: BorderRadius.circular(100),
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
                // color: Colors.amberAccent,
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
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 400,
                  // color: Colors.cyan[200],
                  child: Column(children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Required Email.."),
                        EmailValidator(errorText: "Enter Correct Email.."),
                      ]),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        labelText: "Email",
                        hintText: "Enter Your Email Credentials..",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: passwordShow,
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Required Password.."),
                        MinLengthValidator(7,
                            errorText: "Enter minimum 7 numbers.."),
                      ]),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Remember Me!"),
                            Checkbox(
                              value: value,
                              checkColor: Colors.black,
                              activeColor: Colors.blue,
                              onChanged: (value) {
                                setState(() {
                                  this.value = value!;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Not Support Yet!"),
                                      backgroundColor: Colors.green,
                                      duration: Duration(milliseconds: 1000),
                                      dismissDirection: DismissDirection.up,
                                    ),
                                  );
                                });
                              },
                            ),
                          ],
                        ),
                        ElevatedButton(
                          child: Text("Forgot Password"),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Not Support Yet!"),
                                backgroundColor: Colors.green,
                                duration: Duration(milliseconds: 1000),
                                dismissDirection: DismissDirection.up,
                              ),
                            );
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      child: Text("Log In"),
                      onPressed: () {
                        checkValidation(context);
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
                                // ScaffoldMessenger.of(context).showSnackBar(
                                //   SnackBar(
                                //     content: Text("Not Support Yet"),
                                //     backgroundColor: Colors.green,
                                //     duration: Duration(milliseconds: 1000),
                                //     dismissDirection: DismissDirection.up,
                                //   ),
                                // );
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
