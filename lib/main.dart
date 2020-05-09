import 'package:flutter/material.dart';
import 'package:meals/screens/category_meals_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/tabs_manager.dart';
import 'screens/category_screen.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
            body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1)
            ),
          title: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          )
        )
      ),
      initialRoute: TabsManager.routeName,
      routes: {
        TabsManager.routeName:(ctx)=>TabsManager(),
        CategoryScreen.routeName:(ctx)=>CategoryScreen(),
        CategoryMealsScreen.routeName:(ctx)=>CategoryMealsScreen(),
        MealDetailScreen.routeName:(ctx)=>MealDetailScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
