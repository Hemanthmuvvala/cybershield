import 'package:cybershield/provider/provider_screens/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final List<int> numbers = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody:true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int last = numbers.last;
          setState(() {
            numbers.add(last + 1);
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('first Screen'),
        backgroundColor: Colors.yellow,
      ),
      body: SizedBox(
        child: Column(
          children: [
            Text(
              numbers.last.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbers[index].toString(),
                      style: const TextStyle(fontSize: 30),
                    );
                  }),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => SecondScreen(numbers: numbers)));
                },
                child: const Icon(Icons.next_plan)),
          ],
        ),
      ),
    );
  }
}
