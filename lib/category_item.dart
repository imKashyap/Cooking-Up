import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/screens/category_meals_screen.dart';
class CategoryItem extends StatelessWidget {
  Category _category;
  CategoryItem(this._category);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> _tapped(context),
      borderRadius: BorderRadius.circular(10.0),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _category.color,
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              _category.color.withOpacity(0.6),
              _category.color,
            ],
          ),
        ),
        child: Text(_category.title,
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }

  void _tapped(BuildContext context){
    Navigator.of(context).pushNamed(CategoryMealsScreen.routeName,
    arguments: {
      'id':_category.id,
      'title':_category.title,
    });
  }
}
