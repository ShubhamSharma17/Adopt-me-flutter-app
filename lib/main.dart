// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_renaming_method_parameters, non_constant_identifier_names

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pet_ui/Routes.dart';
import 'package:pet_ui/authentication_pages/Login_page.dart';
import 'package:pet_ui/drawerScreen.dart';
import 'package:pet_ui/homeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:
      // Stack(children: [
      //   DrawerScreen(),
      //   HomeScreen(),
      // ]),

      initialRoute: MyRoutes.loginPage,
      routes: {
        MyRoutes.loginPage: (context) => LoginPage(),
        MyRoutes.drawerPage: (context) => DrawerScreen(),
        MyRoutes.homePage: (context) => HomeScreen(),
      },
    );
  }
}
