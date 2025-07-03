import 'package:cybershield/presentation/pages/destination_newsscreen.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String source;
  final String title;
  final String imagePath;
  final String fullContent;
  final String avatar;
  final Color avatarColor;

  const NewsCard({
    super.key,
    required this.source,
    required this.title,
    required this.imagePath,
    required this.fullContent,
    required this.avatar,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => DestinationNewsscreen(
              source: source,
              title: title,
              imagePath: imagePath,
              fullContent: fullContent,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,1.0),
        child: Card(
          elevation: 5,
            color:const Color.fromARGB(255, 25, 53, 66),
          margin: const EdgeInsets.all(5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:avatarColor,
                      ),
                      child:  Center(
                        child: Text(
                          avatar,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      source,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
      
              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Center(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width:350,
                    height: 180,
                  ),
                ),
              ),
      
              // Headline
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
