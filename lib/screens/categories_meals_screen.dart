import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoriesMealsSreen extends StatelessWidget {
  const CategoriesMealsSreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Receitas por Categoria"),
      ),
    );
  }
}