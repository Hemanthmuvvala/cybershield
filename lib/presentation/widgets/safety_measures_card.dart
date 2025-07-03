import 'package:flutter/material.dart';

class SafetyMeasuresCard extends StatefulWidget {
  const SafetyMeasuresCard({super.key});

  @override
  State<SafetyMeasuresCard> createState() => _SafetyMeasuresCardState();
}

class _SafetyMeasuresCardState extends State<SafetyMeasuresCard> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Color.fromARGB(255, 91, 177, 247),
      child: ExpansionTile(
        title: Text('Phishing'),
        children: [
          Text(
              '"Phishing is a type of cyber attack where attackers use fake websites or emails to trick you into revealing personal data such as passwords or credit card numbers."'),
        ],
      ),
    );
  }
}
