import 'package:flutter/material.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({super.key, required this.title,required this.year,required this.image,this.nextpage,});

  final String title;
  final String year;
  final String image;
  final Widget? nextpage;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextpage != null ? () {
        Navigator.push(context, 
          MaterialPageRoute(builder: (context){
            return nextpage!;
            },
          )
        );
      } : null,
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
            image,
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
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                year,
                style: const TextStyle(fontSize: 16),
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