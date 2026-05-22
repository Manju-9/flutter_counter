import 'package:flutter/material.dart';
import 'package:myapp/data/movieslist.dart';
import 'package:myapp/pages/details.dart';
import 'package:myapp/widget/movieslist.dart';

class SearchingBar extends StatefulWidget {
  const SearchingBar({super.key});

  @override
  
  State<SearchingBar> createState() => _SearchingBarState();
}

class _SearchingBarState extends State<SearchingBar> {
TextEditingController controllertext = TextEditingController();
List<Movie> FilteredMovies = [];
void searchmovies(String text){
  final suggest = marvelMovies.where((movie) {
    final movietitle = movie.title.toLowerCase();
    final user = text.toLowerCase();
    return movietitle.contains(user);
  }).toList();
  setState(() {
    FilteredMovies = suggest;
  });
}
  @override
  void initState() {
    super.initState();
    FilteredMovies = marvelMovies;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Padding(
              padding: const EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: searchmovies,
                  controller: controllertext,
                  decoration: InputDecoration(
                    hintText: "search movies",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),  
                ),
              ),
            ),
        body: ListView.builder(
          itemCount: FilteredMovies.length,
          itemBuilder: (context, index) {
            final item = FilteredMovies[index];
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
        )    
    );
  }
}