import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:cybershield/presentation/pages/homescreen.dart';
import 'package:cybershield/presentation/pages/news_screen.dart';
import 'package:cybershield/presentation/pages/profile.dart';
import 'package:cybershield/presentation/pages/report_screen.dart';
import 'package:cybershield/presentation/pages/safety_measure.dart';
import 'package:flutter/material.dart';

class BnNavigator extends StatefulWidget {
  const BnNavigator({super.key});

  @override
  State<BnNavigator> createState() => _BnNavigatorState();
}

class _BnNavigatorState extends State<BnNavigator> {
  final screens = [
    const Homescreen(),
    const NewsScreen(),
    const SafetyMeasure(),
    const ReportScreen(),
    const ProfileScreen(),
  ];
  int index = 2;
  final items = <Widget>[
    const Icon(
      Icons.home,
      size: 30,
    ),
    const Icon(
      Icons.newspaper,
      size: 30,
    ),
    const Icon(
      Icons.shield,
      size: 30,
    ),
    const Icon(
      Icons.report_problem_rounded,
      size: 30,
    ),
    const Icon(
      Icons.person,
      size: 30,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: index,
        children: screens,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color:  Color.fromARGB(255, 28, 159, 220),
        buttonBackgroundColor: const Color.fromARGB(255, 119, 251, 92),
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 500),
        items: items,
        height: 60,
        index: index,
        onTap: (index) => setState(() {
          this.index = index;
        }),
      ),
    );
  }
}
