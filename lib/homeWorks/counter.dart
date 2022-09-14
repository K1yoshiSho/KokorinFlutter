// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _MyCounterState();
  }
}

class _MyCounterState extends State<MyCounter> {
  late int _element;

  @override
  void initState() {
    _element = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('title'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Ink(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                          icon: Icon(Icons.remove_rounded),
                          iconSize: 20,
                          color: Colors.white,
                          splashRadius: 20,
                          onPressed: () {
                            setState(() {
                              _decrement();
                            });
                          },
                        ),
                      ),
                    ),
                    Text('$_element'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Ink(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                          icon: Icon(Icons.add_rounded),
                          iconSize: 20,
                          color: Colors.white,
                          splashRadius: 20,
                          onPressed: () {
                            setState(() {
                              _increment();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _increment() {
    _element++;
  }

  void _decrement() {
    _element--;
  }
}
