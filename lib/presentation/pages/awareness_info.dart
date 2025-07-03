import 'package:flutter/material.dart';

class AwarenessDetail extends StatelessWidget {
  final String title;
  final String description;

  const AwarenessDetail({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title:  Center(child: Text(title,style:const TextStyle(fontSize:25),)),
        backgroundColor: const Color.fromARGB(255, 28, 159, 220),
      ),
    backgroundColor:Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          description,
          style: const TextStyle(fontSize:30, color: Color.fromARGB(179, 17, 17, 17)),
        ),
      ),
    );
  }
}
