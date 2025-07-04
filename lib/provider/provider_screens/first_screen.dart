import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first Screen'),
        backgroundColor: Colors.yellow,
      ),
      body: SizedBox(
        child: Container(
          child: Column(
            children: [
              Text(
                '0',
                style: TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Text('1', style: TextStyle(fontSize: 30),);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
