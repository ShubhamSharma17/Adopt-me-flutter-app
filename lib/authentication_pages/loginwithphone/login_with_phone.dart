// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_ui/authentication_pages/loginwithphone/verifyOTP.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();

    //method for phonr login
    void phoneLogin() async {
      String phone = '+91' + phoneController.text.trim();
      FirebaseAuth.instance.verifyPhoneNumber(
          codeAutoRetrievalTimeout: ((verificationId) {}),
          codeSent: (verificaitionID, resendToken) {
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => VerifyOTP(
                    verificationID: verificaitionID,
                  ),
                ));
          },
          phoneNumber: phone,
          verificationCompleted: (credencials) {},
          verificationFailed: (e) {
            //snackbar
            log(e.code.toString());
          });
    }

    return Scaffold(
      appBar: AppBar(title: Text('Login Woth Phone')),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                hintText: 'Enter Phone Number',
              ),
            ),
            SizedBox(height: 15),
            CupertinoButton(
              color: Colors.blue,
              child: Text('Sign In'),
              onPressed: () {
                phoneLogin();
              },
            )
          ],
        ),
      ),
    );
  }
}
