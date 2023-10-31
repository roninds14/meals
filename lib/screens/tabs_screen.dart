import 'package:flutter/material.dart';
import 'package:meals/screens/category_screen.dart';

import 'favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectScreenIndex = 0;
  final List<Map<String, Object>> _screens = [
    {
      'title': "Lista de Categorias",
      'screen': const CategoryScreen(),
    },
    {
      'title': "Meus Favoritos",
      'screen': const FavoriteScreen(),
    },
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screens[_selectScreenIndex]['title'] as String,
        ),
        centerTitle: true,
      ),
      body: _screens[_selectScreenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectScreenIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const Icon(Icons.category),
              label: 'Categorias'),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const Icon(Icons.star),
              label: 'Favoritos'),
        ],
      ),
    );
  }
}
