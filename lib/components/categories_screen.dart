// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_trial/components/category_item.dart';
import 'package:second_trial/components/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food App'),
      ),
      body: GridView(
        padding: EdgeInsets.all(25.0),
        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //   maxCrossAxisExtent: 200,
        //   childAspectRatio: 3 / 2,
        //   crossAxisSpacing: 20,
        //   mainAxisSpacing: 20,
        // ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 150/50,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_DATA
            .map((categoryItem) => CategoryItem(
                text: categoryItem.text, color: categoryItem.color, icon: categoryItem.icon,))
            .toList(),
      ),
    );
  }
}
