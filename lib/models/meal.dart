// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum Complexity {
  simple,
  medium,
  difficult,
}

enum Cost {
  cheap,
  fair,
  expensive,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    required this.complexity,
    required this.cost,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.id,
  });

  String get complexityText
  {
    switch(complexity)
    {
      case Complexity.simple:
        return 'Simples';
      case Complexity.difficult:
        return 'Difícil';
      case Complexity.medium:
        return 'Normal';
      default :
        return 'Desconhecida';
    }
  }

  String get costText
  {
     switch(cost)
    {
      case Cost.cheap:
        return 'Barato';
      case Cost.expensive:
        return 'Caro';
      case Cost.fair:
        return 'Justo';
      default :
        return 'Desconhecido';
    }
  }
}
