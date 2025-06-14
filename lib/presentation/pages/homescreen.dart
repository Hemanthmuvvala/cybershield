import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body:Container(
               decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0A0E27), // Dark navy
              Color(0xFF1A1D3A), // Slightly lighter navy
              Color(0xFF2D3561), // Mid navy
            ],
          ),
        ),
     
        ),
      


    );
  }
}