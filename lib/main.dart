import 'package:flutter/material.dart';
import 'package:myapp/widget/movieslist.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body:  ListView(
              children: [
                MoviesList( 
                  title: "Iron Man",
                  year: "2008",
                  image: "assets/images/ironman.jpg",
                ),
                MoviesList(
                  title: "The Avengers",
                  year: "2012",
                  image: "assets/images/avengers.jpg",
                ),
                MoviesList(
                  title: "Captain America: The Winter Soldier",
                  year: "2014",
                  image: "assets/images/captionam.jpg",
                ),
                MoviesList(
                  title: "Guardians of the Galaxy",
                  year: "2014",
                  image: "assets/images/guardiansgalaxy.jpg",
                ),
                MoviesList(
                  title: "Black Panther",
                  year: "2018",
                  image: "assets/images/blackpanther.jpg",
                ),
                MoviesList(
                  title: "Avengers: Infinity War",
                  year: "2018",
                  image: "assets/images/infinitywar.jpg",
                ),
                MoviesList(
                  title: "Avengers: Endgame",
                  year: "2019",
                  image: "assets/images/endgame.jpg",
                ),
              ],
            ),
          ),
        );
  }
}