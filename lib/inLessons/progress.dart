// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';

class MyProgressBar extends StatefulWidget {
  const MyProgressBar({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _MyProgressBarState();
  }
}

class _MyProgressBarState extends State<MyProgressBar> {
  late bool _loading;
  late double _progressValue;

  @override
  void initState() {
    _loading = false;
    _progressValue = 0.0;
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
        child: _loading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  LinearProgressIndicator(
                    value: _progressValue,
                  ),
                  Text(
                    '${(_progressValue * 100).round()}%',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Colors.blue,
                    ),
                  )
                ],
              )
            : Text(
                'Нажмите на кнопку чтобы скачать',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.blue),
              ),
      )),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          setState(() {
            _loading = !_loading;
            _updateProgress();
          });
        },
        child: Icon(Icons.cloud_download_rounded),
      ),
    );
  }

  void _updateProgress() {
    const oneSecond = Duration(seconds: 1);
    Timer.periodic(oneSecond, (Timer t) {
      setState(() {
        _progressValue += 0.2;

        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          _progressValue = 0.0;
          return;
        }
      });
    });
  }
}
