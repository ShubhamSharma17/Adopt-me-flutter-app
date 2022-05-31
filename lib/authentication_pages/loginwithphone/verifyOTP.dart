// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_ui/homeScreen.dart';

class VerifyOTP extends StatefulWidget {
  final String verificationID;

  const VerifyOTP({Key? key, required this.verificationID}) : super(key: key);

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  TextEditingController verifyController = TextEditingController();
  //method for verify OTP
  void verifyOTP() async {
    String otp = verifyController.text.trim();

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationID, smsCode: otp);

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      if (userCredential.user != null) {
        Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => HomeScreen(),
            ));
      }
    } on FirebaseException catch (e) {
      //snack bar
      log(e.code.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Verify OTP')),
      body: Column(
        children: [
          TextField(
            controller: verifyController,
            maxLength: 6,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              counterText: '',
              hintText: 'Enter OTP',
              labelText: 'OTP',
            ),
          ),
          SizedBox(height: 15),
          CupertinoButton(
              child: Text('Verify'),
              onPressed: () {
                verifyOTP();
              })
        ],
      ),
    );
  }
}
