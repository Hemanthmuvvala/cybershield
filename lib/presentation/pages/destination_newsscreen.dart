import 'package:flutter/material.dart';

class DestinationNewsscreen extends StatelessWidget {
  final String source;
  final String title;
  final String imagePath;
  final String fullContent;

  const DestinationNewsscreen({
    super.key,
    required this.source,
    required this.title,
    required this.imagePath,
    required this.fullContent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(title: Text(source)),
      body: SingleChildScrollView(
      padding:EdgeInsets.all(8),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Center(child: Image.asset(imagePath,)),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                fullContent,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      
    );
  }
}
