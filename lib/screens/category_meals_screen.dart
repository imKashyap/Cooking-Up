import 'package:flutter/material.dart';
import 'package:meals/meal_item.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/dummy_data.dart';
import 'package:meals/models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = 'CategoryMealsScreen';
  final List<Meal> _availableMeals;
  const CategoryMealsScreen(this._availableMeals);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final List<Meal> meals =
        _availableMeals.where((m) => m.categories.contains(categoryId)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: meals[index].id,
              title: meals[index].title,
              imageUrl: meals[index].imageUrl,
              affordability: meals[index].affordability,
              complexity: meals[index].complexity,
              duration: meals[index].duration);
        },
        itemCount: meals.length,
      ),
    );
  }
}
