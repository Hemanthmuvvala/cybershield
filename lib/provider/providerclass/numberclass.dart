import 'package:flutter/material.dart';

class Numberclass extends ChangeNotifier {
  final List<int> numbers = [1, 2, 3, 4, 5];
  void addNumbers() {
    int last = numbers.last;
    numbers.add(last + 1);
    
  }
}
