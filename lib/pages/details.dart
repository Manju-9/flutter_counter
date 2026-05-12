import 'package:flutter/material.dart';
// import 'package:myapp/main.dart';
class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key,required this.image,required this.title,required this.year,});
  
  final String title;
  final String year;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details page"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Icon(
                    Icons.calendar_month
                  ),
                  Text(
                    year,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}