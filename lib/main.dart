import 'package:flutter/material.dart';
import 'package:myapp/data/movieslist.dart';
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
Widget? nextpage;
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
        body:  ListView.builder(
          itemCount: marvelMovies.length,
          itemBuilder: (context, index) {
            final item = marvelMovies[index];
            return MoviesList(
              title: item.title, 
              year: item.year, 
              image: item.image, 
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context){
                      return DetailsPage(image: item.image, title: item.title, year:item. year);
                    },
                  )
                );
              },
            );
          },
        ),
      ),
    );
  }
}