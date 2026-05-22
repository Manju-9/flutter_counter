import 'package:flutter/material.dart';

class MoviesList extends StatefulWidget {
  const MoviesList({super.key, required this.title,required this.year,required this.image,this.nextpage,required this.onTap});

  final String title;
  final String year;
  final String image;
  final Widget? nextpage;
  final VoidCallback onTap;

  @override
  State<MoviesList> createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
  bool isliked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:widget.onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [   
    Card(
      margin: EdgeInsets.all(10),
      child: Padding(padding: EdgeInsets.all(10),
      child: Row(
        children: [
          ClipRRect(
           borderRadius: BorderRadius.circular(5.0),
          child:Image.asset(
            widget.image,
            height: 120,
            width: 100,
            fit: BoxFit.cover,
          ),
          ),
          SizedBox(width: 20),
        Expanded(
         child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                widget.year,
                style: const TextStyle(fontSize: 16),
              ),
              SizedBox(width: 60),
              IconButton(onPressed: () {
              setState(() {
              isliked = !isliked;
              });  
            }, 
            icon: Icon(
              isliked ? Icons.favorite : Icons.favorite_border,
              color: isliked ? Colors.red : Colors.grey,
              size: 25,
            ) 
            ),
            ],
          ),),
        ],
      ),
      ),
    ),
        ],
      ),
    );
  }
}