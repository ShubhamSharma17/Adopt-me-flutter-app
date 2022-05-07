// ignore_for_file: file_names, prefer_const_constructors

import "package:flutter/material.dart";
import 'package:pet_ui/configuration.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, left: 10, bottom: 10),
      color: Color(0xff416d6d),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                child: ClipOval(child: Image.asset("Images/me.jpg")),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Shubham Sharma",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Action Status",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: drawerItems
                .map(
                  (elemect) => Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Icon(
                          elemect['icon'],
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          elemect['title'],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
              Text(
                "Settings",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.black54,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Log Out",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
