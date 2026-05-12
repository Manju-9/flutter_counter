import 'package:flutter/material.dart';
import 'package:myapp/data/notifiers.dart';

class Nagivation extends StatefulWidget {
  const Nagivation({super.key});

  @override
  State<Nagivation> createState() => _NagivationState();
}

class _NagivationState extends State<Nagivation> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedimagenotifier, 
      builder: (context, selectedimage, child) {
      return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.image), label: "image")
      ],
      onDestinationSelected: (int value) {
        selectedimagenotifier.value = value;
      },
      selectedIndex: selectedimage,
    );
    },
    );
  }
}