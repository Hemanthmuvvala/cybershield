import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final List<int> numbers;
  const SecondScreen({super.key, required this.numbers});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton(
        onPressed: () {
          int last = widget.numbers.last;
          setState(() {
            widget.numbers.add(last + 1);
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Second Screen'),
        backgroundColor: Colors.yellow,
      ),
      body: SizedBox(
        child: Column(
          children: [
            Text(
              widget.numbers.last.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount:widget.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      widget.numbers[index].toString(),
                      style: const TextStyle(fontSize: 30),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
