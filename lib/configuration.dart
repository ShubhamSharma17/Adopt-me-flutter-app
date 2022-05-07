// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(
    color: Colors.black12,
    blurRadius: 20,
    offset: Offset(0, 10),
  )
];

List<Map> categories = [
  {"name": "Cat", "imagePath": "Images/cat3.png"},
  {"name": "Cow", "imagePath": "Images/cow3.png"},
  {"name": "Dog", "imagePath": "Images/dog3.png"},
  // {"name": "Fox", "imagePath": "Images/fox.png"},
  {"name": "Rabbit", "imagePath": "Images/rabbit3.png"},
  {"name": "Shaeep", "imagePath": "Images/sheep3.png"},
  // {"name": "Snake", "imagePath": "Images/snake.png"},
  // {"name": "Koala", "imagePath": "Images/koala.png"},
];

List<Map> drawerItems = [
  {"icon": FontAwesomeIcons.paw, "title": "Adoption"},
  {"icon": Icons.mail, "title": "Donation"},
  {"icon": FontAwesomeIcons.plus, "title": "Add Pet"},
  {"icon": Icons.favorite, "title": "Favorite"},
  {"icon": FontAwesomeIcons.paw, "title": "Adoption"},
  {"icon": Icons.mail, "title": "Messages"},
  {"icon": Icons.verified_user, "title": "Profile"}
];

List<Map> homeScreenAnimalsDetails = [
  {
    "image": "https://www.cdc.gov/healthypets/images/buttons/pets-dogs.jpg",
    "name": "Name : Jerry",
    "about": "This is Friendly Dog",
    "age": "Age : 5 Years",
    "location": "Location : Rohini"
  },
  {
    "image":
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/why-cats-are-best-pets-1559241235.jpg",
    "name": "Name : Tom",
    "about": "It's a Sweet Cat",
    "age": "Age : 2 Years",
    "location": "Location : Rithala"
  },
  {
    "image":
        "https://images.hindustantimes.com/rf/image_size_960x540/HT/p2/2018/05/22/Pictures/_4ebac612-5dbd-11e8-828c-aa2fd3852b8f.jpg",
    "name": "Name : Berry",
    "about": "It's happy to play \nwith peoples",
    "age": "Age : 6 Months ",
    "location": "Location : Noida"
  },
  {
    "image":
        "https://res.cloudinary.com/dk-find-out/image/upload/q_80,w_960,f_auto/MA_00824585_ghl1vj.png",
    "name": "Name : Tot",
    "about": "This is Friendly Dog",
    "age": "Age : 8 Months",
    "location": "Location : Dwarka"
  },
];

List<Map> particularAnimals = [
  {
    "name": 'Luna',
    "breed": 'Aegean',
    "age": '1',
    "location": 'Delhi',
    "distance": '2.5',
    "discription":
        'Although the Aegean has only very recently begun to be bred systematically, it has been domesticated for many centuries and thus has become adapted very well to humans. It is a social pet that tolerates living in an apartment rather well. It is intelligent, active, lively and also communicative, not hesitating to draw a person'
            's attention',
    "weight": '4',
    "color": 'brown',
    "sex": 'female',
    "image": 'https://wallpaperaccess.com/full/1209275.jpg'
  },
  {
    "name": 'Milo',
    "breed": 'American Bobtail',
    "age": '1.8 Year',
    "location": 'Rohini',
    "distance": '2.5',
    "discription":
        'Although the Aegean has only very recently begun to be bred systematically, it has been domesticated for many centuries and thus has become adapted very well to humans. It is a social pet that tolerates living in an apartment rather well. It is intelligent, active, lively and also communicative, not hesitating to draw a person'
            's attention',
    "weight": '4',
    "color": 'brown',
    "sex": 'female',
    "image":
        'https://blog.mystart.com/wp-content/uploads/shutterstock_352176329-e1527775515405.jpg'
  },
  {
    "name": 'Oliver',
    "breed": 'American Curl',
    "age": '2 Year',
    "location": 'Dwarka',
    "distance": '2.5',
    "discription":
        'Although the Aegean has only very recently begun to be bred systematically, it has been domesticated for many centuries and thus has become adapted very well to humans. It is a social pet that tolerates living in an apartment rather well. It is intelligent, active, lively and also communicative, not hesitating to draw a person'
            's attention',
    "weight": '4',
    "color": 'brown',
    "sex": 'female',
    "image":
        'https://cdn.britannica.com/91/181391-050-1DA18304/cat-toes-paw-number-paws-tiger-tabby.jpg?q=60'
  },
  {
    "name": 'Leo',
    "breed": 'Asian',
    "age": '1',
    "location": 'Delhi',
    "distance": '2.5',
    "discription":
        'Although the Aegean has only very recently begun to be bred systematically, it has been domesticated for many centuries and thus has become adapted very well to humans. It is a social pet that tolerates living in an apartment rather well. It is intelligent, active, lively and also communicative, not hesitating to draw a person'
            's attention',
    "weight": '4',
    "color": 'brown',
    "sex": 'female',
    "image":
        'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80'
  },
  {
    "name": 'Loki',
    "breed": 'Bengal',
    "age": '4 Months',
    "location": 'Delhi',
    "distance": '2.5',
    "discription":
        'Although the Aegean has only very recently begun to be bred systematically, it has been domesticated for many centuries and thus has become adapted very well to humans. It is a social pet that tolerates living in an apartment rather well. It is intelligent, active, lively and also communicative, not hesitating to draw a person'
            's attention',
    "weight": '4',
    "color": 'brown',
    "sex": 'female',
    "image": 'https://wallpaperaccess.com/full/1209274.jpg'
  },
  {
    "name": 'Bella',
    "breed": 'Bombay',
    "age": '1.5 Years',
    "location": 'Delhi',
    "distance": '2.5',
    "discription":
        'Although the Aegean has only very recently begun to be bred systematically, it has been domesticated for many centuries and thus has become adapted very well to humans. It is a social pet that tolerates living in an apartment rather well. It is intelligent, active, lively and also communicative, not hesitating to draw a person'
            's attention',
    "weight": '4',
    "color": 'brown',
    "sex": 'female',
    "image":
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXc9sgijtbE403qohLVX8KV5GWtzgdqXphFw&usqp=CAU'
  },
  {
    "name": 'Charlie',
    "breed": 'British Longhair',
    "age": '1.3 Years',
    "location": 'Delhi',
    "distance": '2.5',
    "discription":
        'Although the Aegean has only very recently begun to be bred systematically, it has been domesticated for many centuries and thus has become adapted very well to humans. It is a social pet that tolerates living in an apartment rather well. It is intelligent, active, lively and also communicative, not hesitating to draw a person'
            's attention',
    "weight": '4',
    "color": 'brown',
    "sex": 'female',
    "image":
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiK-ExwCO0GeWoFOJ4rjnv6qJJB-d1jJWg7A&usqp=CAU'
  },
  {
    "name": 'Willow',
    "breed": 'Burmilla',
    "age": '2 Years',
    "location": 'Delhi',
    "distance": '2.5',
    "discription":
        'Although the Aegean has only very recently begun to be bred systematically, it has been domesticated for many centuries and thus has become adapted very well to humans. It is a social pet that tolerates living in an apartment rather well. It is intelligent, active, lively and also communicative, not hesitating to draw a person'
            's attention',
    "weight": '4',
    "color": 'brown',
    "sex": 'female',
    "image":
        'https://static.toiimg.com/thumb/msid-84134489,width-1200,height-900,resizemode-4/.jpg'
  },
  {
    "name": 'Lucy',
    "breed": 'Chartreux',
    "age": '.9 Years',
    "location": 'Delhi',
    "distance": '2.5',
    "discription":
        'Although the Aegean has only very recently begun to be bred systematically, it has been domesticated for many centuries and thus has become adapted very well to humans. It is a social pet that tolerates living in an apartment rather well. It is intelligent, active, lively and also communicative, not hesitating to draw a person'
            's attention',
    "weight": '4',
    "color": 'brown',
    "sex": 'female',
    "image": 'https://wallpapercave.com/wp/STO4Kja.jpg'
  },
  {
    "name": 'Simba',
    "breed": 'Cyprus',
    "age": '.7 Years',
    "location": 'Delhi',
    "distance": '2.5',
    "discription":
        'Although the Aegean has only very recently begun to be bred systematically, it has been domesticated for many centuries and thus has become adapted very well to humans. It is a social pet that tolerates living in an apartment rather well. It is intelligent, active, lively and also communicative, not hesitating to draw a person'
            's attention',
    "weight": '4',
    "color": 'brown',
    "sex": 'female',
    "image":
        'https://newevolutiondesigns.com/images/freebies/cat-wallpaper-1.jpg'
  },
  {
    "name": 'Zoe',
    "breed": 'Egyptian Mau',
    "age": '.5 Years',
    "location": 'Delhi',
    "distance": '2.5',
    "discription":
        'Although the Aegean has only very recently begun to be bred systematically, it has been domesticated for many centuries and thus has become adapted very well to humans. It is a social pet that tolerates living in an apartment rather well. It is intelligent, active, lively and also communicative, not hesitating to draw a person'
            's attention',
    "weight": '4',
    "color": 'brown',
    "sex": 'female',
    "image":
        'https://images.unsplash.com/photo-1615789591457-74a63395c990?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZG9tZXN0aWMlMjBjYXR8ZW58MHx8MHx8&w=1000&q=80'
  },
];
