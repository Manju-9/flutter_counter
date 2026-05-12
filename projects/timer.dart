import 'dart:async';

import 'package:flutter/material.dart';

class TapTimer extends StatefulWidget {
  const TapTimer({super.key});

  @override
  State<TapTimer> createState() => TapTimerState();
}

class TapTimerState extends State<TapTimer> {
  int hrs = 0;
  int min = 0;
  int sec = 0;
  Timer? timer;
  bool isRunning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text("Tap Timer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                 ),
              ),
              Text("$hrs:$min:$sec".toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 50.0,
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(30.0),),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      sec++;
                      if (sec == 60) {
                        sec = 0;
                        min++;
                      }

                      if (min == 60) {
                        min = 0;
                        hrs++;
                      }
                    });
                  }, 
                  child: 
                    Text("Start",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      timer?.cancel();
                    });
                  }, 
                  child: 
                    Text("Stop",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      hrs = 00;
                      min = 00;
                      sec = 00;
                    });
                  }, 
                  child: 
                    Text("Restart",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0,
                        color: Colors.blue,
                      ),
                    ),
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