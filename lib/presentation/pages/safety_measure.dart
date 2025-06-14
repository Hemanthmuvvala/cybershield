import 'package:cybershield/presentation/widgets/safety_measures_card.dart';
import 'package:flutter/material.dart';

class SafetyMeasure extends StatefulWidget {
  const SafetyMeasure({super.key});

  @override
  State<SafetyMeasure> createState() => _SafetyMeasureState();
}

class _SafetyMeasureState extends State<SafetyMeasure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          children: [
          SafetyMeasuresCard(),


          ],
        ),
      ),
    );
  }
}
