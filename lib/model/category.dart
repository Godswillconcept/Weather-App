import 'package:flutter/material.dart';
class Category {
  final String id;
  final String text;
  final Color color;
  final Icon icon;

  Category( { required this.icon, required this.id, required this.text, this.color = Colors.orange});
}
