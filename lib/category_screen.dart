import 'package:flutter/material.dart';
import 'file:///C:/Users/rahul/AndroidStudioProjects/meals/lib/category_item.dart';
import 'package:meals/models/dummy_data.dart';
class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cooking Up'),
      ),
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
