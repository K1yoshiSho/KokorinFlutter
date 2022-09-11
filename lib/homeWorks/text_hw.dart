import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key, required this.title});
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
          child: Text(
        'Salem!',
        style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
            foreground: Paint()
              ..shader = const LinearGradient(
                colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
              ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0))),
      )),
    );
  }
}
