import 'package:flutter/material.dart';
import 'file:///C:/Users/rahul/AndroidStudioProjects/meals/lib/category_item.dart';
import 'package:meals/models/dummy_data.dart';
class CategoryScreen extends StatelessWidget {
  static const String routeName='CategoryScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(20.0),
        children: DUMMY_CATEGORIES.map((cat) => CategoryItem(cat)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
      ),
    );
  }
}
