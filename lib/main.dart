import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/category_screen.dart';

import '../utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final theme = ThemeData(
      canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium:
              const TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed')));

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => const CategoryScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => const CategoriesMealsSreen(),
      },
    );
  }
}
