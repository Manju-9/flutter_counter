import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  double counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              "Counter App",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              ),
            ),
            Text(counter.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60.0,
              ),
            ),
            Row(
              children: [
              Padding(padding: EdgeInsetsGeometry.all(45.0)),
                IconButton(onPressed: () {
                  setState(() {
                    counter --;
                  });
            }, 
            icon: const Icon(Icons.remove),
              iconSize: 30.0,
              color: Colors.red,
            ),
            Padding(padding: EdgeInsetsGeometry.all(60.0)),
                IconButton(onPressed: () {
                  setState(() {
                    counter ++;
                  });
            }, 
            icon: const Icon(Icons.add),
              iconSize: 30.0,
              color: Colors.green,
            ),
              ],
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                counter=0;
              });
            }, child:Text("Reset",
            style: TextStyle(
              color: Colors.blue,
            ),
            ), ),
          ],
        ),
      ),
    );
  }
}