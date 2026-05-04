import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Name:",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "DOB:",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Phone Number:",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email:",
                ),
              ),            
            ],
          ),
        ),
      ),
    );
  }
}