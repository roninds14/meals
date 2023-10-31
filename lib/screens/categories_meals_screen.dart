import 'package:flutter/material.dart';

import '../components/meal_item.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';

class CategoriesMealsSreen extends StatelessWidget {
  const CategoriesMealsSreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: ((context, index) {
            return MealItem(categoryMeals[index]);
          }),
        ),
      ),
    );
  }
}
