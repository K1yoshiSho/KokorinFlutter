import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
    ));
  }
}
