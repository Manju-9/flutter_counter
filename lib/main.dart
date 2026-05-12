import 'package:flutter/material.dart';
import 'package:myapp/pages/details.dart';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: 
        Center(
          child: 
          Text("Movies List",
            style: 
              TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body:  ListView(
              children: [
                MoviesList( 
                  title: "Iron Man",
                  year: "2008",
                  image: "assets/images/ironman.jpg",
                  nextpage: DetailsPage(
                    title: "Iron Man",
                    year: "2008",
                    image: "assets/images/ironman.jpg"),
                ),
                MoviesList(
                  title: "The Avengers",
                  year: "2012",
                  image: "assets/images/avengers.jpg",
                  
                  nextpage: DetailsPage(
                  title: "The Avengers",
                  year: "2012",
                  image: "assets/images/avengers.jpg",
                  ),
                ),
                MoviesList(
                  title: "Captain America: The Winter Soldier",
                  year: "2014",
                  image: "assets/images/captionam.jpg",
                  nextpage: DetailsPage(
                   title: "Captain America: The Winter Soldier",
                  year: "2014",
                  image: "assets/images/captionam.jpg",
                  ),
                ),
                MoviesList(
                  title: "Guardians of the Galaxy",
                  year: "2014",
                  image: "assets/images/guardiansgalaxy.jpg",
                   nextpage: DetailsPage(
                   title: "Guardians of the Galaxy",
                  year: "2014",
                  image: "assets/images/guardiansgalaxy.jpg",
                  ),
                ),
                MoviesList(
                  title: "Black Panther",
                  year: "2018",
                  image: "assets/images/blackpanther.jpg",
                  nextpage: DetailsPage(
                  title: "Black Panther",
                  year: "2018",
                  image: "assets/images/blackpanther.jpg",
                  ),
                ),
                MoviesList(
                  title: "Avengers: Infinity War",
                  year: "2018",
                  image: "assets/images/infinitywar.jpg",
                  nextpage: DetailsPage(
                  title: "Avengers: Infinity War",
                  year: "2018",
                  image: "assets/images/infinitywar.jpg",
                  ),
                ),
                MoviesList(
                  title: "Avengers: Endgame",
                  year: "2019",
                  image: "assets/images/endgame.jpg",
                  nextpage: DetailsPage(
                  title: "Avengers: Endgame",
                  year: "2019",
                  image: "assets/images/endgame.jpg",
                  ),
                ),
              ],
            ),
          ),
        );
  }
}