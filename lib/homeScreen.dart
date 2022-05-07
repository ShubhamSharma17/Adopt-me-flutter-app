// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';
import 'package:pet_ui/drawerScreen.dart';
import 'package:pet_ui/slider_page/animal_list/animals_list.dart';
import 'package:pet_ui/utils/text.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          decoration: BoxDecoration(
            color: Colors.greenAccent[200],
            borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0),
          ),
          duration: Duration(milliseconds: 500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                color: Colors.greenAccent[200],
                padding: EdgeInsets.only(top: 20, right: 10, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isDrawerOpen = false;
                              });
                            },
                            icon: Icon(Icons.arrow_back_ios_new_rounded))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                xOffset = 200;
                                yOffset = 200;
                                scaleFactor = .6;
                                isDrawerOpen = true;
                              });
                            },
                            icon: Icon(Icons.menu),
                          ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: BoldmodifiedText(
                    text: 'All Categories', size: 30, color: Colors.black),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 15),
                height: 100,
                // color: Colors.teal,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnimalsList(
                              index: index,
                            ),
                          ),
                        ),
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              categories[index]["imagePath"],
                              height: 60,
                              width: 60,
                            ),
                            Text(
                              categories[index]["name"],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .7,
                clipBehavior: Clip.antiAlias,
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: ListView.builder(
                  itemCount: homeScreenAnimalsDetails.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.transparent,
                      shadowColor: Colors.transparent,
                      // elevation: 8,
                      margin: EdgeInsets.all(10),
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        // padding: EdgeInsets.all(20),
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Stack(children: [
                          Row(children: [
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          homeScreenAnimalsDetails[index]
                                              ["image"]),
                                      fit: BoxFit.cover)),
                            )),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: const [
                                      Colors.greenAccent,
                                      Colors.grey,
                                      // Colors.yellow,
                                      // Colors.greenAccent,
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      homeScreenAnimalsDetails[index]["name"],
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      homeScreenAnimalsDetails[index]["age"],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      homeScreenAnimalsDetails[index]
                                          ["location"],
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      homeScreenAnimalsDetails[index]["about"],
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    )
                                  ]),
                            )),
                          ]),
                        ]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
