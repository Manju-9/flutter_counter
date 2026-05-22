import 'package:flutter/material.dart';
import 'package:myapp/data/movieslist.dart';
import 'package:myapp/pages/details.dart';
import 'package:myapp/pages/search.dart';
import 'package:myapp/widget/movieslist.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool searching = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          actions: [
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SearchingBar();
              },),);
            }, icon: Icon(
                searching? Icons.search : Icons.search
              )
            ),
          ],
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
      );
  }
}