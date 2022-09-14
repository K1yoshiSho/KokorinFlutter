// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCounter2 extends StatefulWidget {
  const MyCounter2({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _MyCounter2State();
  }
}

class _MyCounter2State extends State<MyCounter2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[300],
        appBar: AppBar(
          title: const Text('Counter'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Tap "-" to decrement',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              CounterWidget(),
              Text('Tap "+" to increment',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
        ));
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 120.0,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.indigo[50],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
              onPressed: () {
                setState(() => _count -= 1);
              },
              icon: const Icon(Icons.remove)),
          Text(
            '$_count',
            style: const TextStyle(fontSize: 20),
          ),
          IconButton(
              onPressed: () {
                setState(() => _count += 1);
              },
              icon: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
