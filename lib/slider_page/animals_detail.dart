// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';
import 'package:pet_ui/utils/text.dart';

class Animals extends StatelessWidget {
  final String image;
  final int index;

  const Animals({
    Key? key,
    required this.image,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .45,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .4,
              ),
              padding: EdgeInsets.all(15),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    particularAnimals[index]['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 70,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    particularAnimals[index]['location'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    particularAnimals[index]['discription'],
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(height: 20),

                  SizedBox(
                    // color: Colors.red,
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 70,
                          // height: 70,

                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ModifiedText(
                                    text: particularAnimals[index]['age'],
                                    size: 15,
                                    color: Colors.black),
                                ModifiedText(
                                    text: "Age", size: 14, color: Colors.black),
                              ]),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 70,
                          // height: 70,

                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(particularAnimals[index]['weight']),
                                Text("weight"),
                              ]),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 70,
                          // height: 70,

                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(particularAnimals[index]['color']),
                                Text("Color"),
                              ]),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 70,
                          // height: 70,

                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(particularAnimals[index]['sex']),
                                Text("Gender"),
                              ]),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //for button
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Center(
                        child: Text(
                      "Take me home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            // for appbar container
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 50,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark_outline,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
