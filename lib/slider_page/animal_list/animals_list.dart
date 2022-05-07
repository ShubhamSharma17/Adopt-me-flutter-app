// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';
import 'package:pet_ui/utils/text.dart';

import '../animals_detail.dart';

class AnimalsList extends StatefulWidget {
  final int index;

  const AnimalsList({
    Key? key,
    required this.index,
  }) : super(key: key);
  @override
  State<AnimalsList> createState() => _AnimalsListState();
}

class _AnimalsListState extends State<AnimalsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 190, 172),
      body: Padding(
        padding: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 40,
                  width: MediaQuery.of(context).size.width * .75,
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.grey[500],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.card_travel),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            BoldmodifiedText(
                text: categories[widget.index]['name'],
                size: 60,
                color: Colors.black),
            Expanded(
              child: ListView.builder(
                itemCount: particularAnimals.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Animals(
                            image: particularAnimals[index]['image'],
                            index: index,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Stack(
                        children: [
                          Container(
                            color: Colors.transparent,
                            margin: EdgeInsets.only(top: 10),
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              shadowColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.greenAccent.shade100,
                                      Colors.white,
                                    ],
                                  ),
                                ),
                                width: double.maxFinite,
                                height: 150,
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4),
                                      height: 150,
                                      width: MediaQuery.of(context).size.width *
                                          .5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    particularAnimals[index]
                                                        ['name'],
                                                    style: TextStyle(
                                                      fontSize: 35,
                                                    ),
                                                  ),
                                                  Icon(Icons.female)
                                                ],
                                              ),
                                              Text(
                                                particularAnimals[index]
                                                    ['breed'],
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.grey[800]),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                particularAnimals[index]['age'],
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on,
                                                  color: Colors.grey),
                                              Text(
                                                particularAnimals[index]
                                                    ['location'],
                                                style: TextStyle(
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '(' +
                                                    particularAnimals[index]
                                                        ['distance'] +
                                                    ')',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            margin: EdgeInsets.only(left: 4, top: 13),
                            width: MediaQuery.of(context).size.width * .38,
                            height: 152,
                            child: Image.network(
                              particularAnimals[index]['image'],
                              fit: BoxFit.fill,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
