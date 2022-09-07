

// ignore_for_file: constant_identifier_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_trial/model/category.dart';

final DUMMY_DATA = [
  Category(id: '1', text: 'Heading', color: Colors.green,  icon: Icon(Icons.ac_unit_outlined),),
  Category(id: '2', text: 'Sub heading', color: Colors.yellow, icon: Icon(Icons.grid_view), ),
  Category(id: '3', text: 'Body', color: Colors.deepPurple,  icon: Icon(Icons.safety_check),),
  Category(id: '4', text: 'Prefix', color: Colors.red,  icon: Icon(Icons.handyman),),
  Category(id: '5', text: 'Suffix', color: Colors.pinkAccent, icon: Icon(Icons.kayaking)),
  Category(id: '6', text: 'Australia', color: Colors.cyanAccent, icon: Icon(Icons.face)),
];