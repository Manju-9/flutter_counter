import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  double counter = 0;
  Color getCounterColor(int value){
    if(counter == 1) return Colors.red;
    else if(counter == 2) return Colors.pink;
    else if(counter == 3) return Colors.green;
    else if(counter == 4) return Colors.brown;
    else if(counter == 5) return Colors.yellow;
    else if(counter == 6) return Colors.orange;
    else if(counter == 7) return Colors.blue;
    else if(counter == 8) return Colors.blueGrey;
    else if(counter == 9) return Colors.grey;
    else if(counter == 10) return Colors.lime;
    else return Colors.black;
  }
  double Target = 10;
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
                color: getCounterColor(10),
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
                    if(counter ==Target){ print("goal reached");};
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
              ), 
            ),
          ],
        ),
      ),
    );
  }
}