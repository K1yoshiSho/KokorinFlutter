// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyProgressBar extends StatelessWidget {
  const MyProgressBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(title),
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
            LinearProgressIndicator(
              value: 23,
            ),
            Text(
              '23%',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                color: Colors.blue,
              ),
            ),
            Text(
              'Нажмите на кнопку чтобы скачать',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: Colors.blue),
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        child: Icon(Icons.cloud_download_rounded),
      ),
    );
  }
}
