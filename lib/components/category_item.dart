// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String text;
  final Color color;
  final Icon icon;
  const CategoryItem(
      {Key? key, required this.text, required this.color, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.7),
            color,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
