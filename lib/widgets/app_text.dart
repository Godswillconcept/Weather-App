// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  const AppText(
    {
      Key? key, 
      required this.text, 
      this.color = Colors.black, 
      this.size = 16,
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}