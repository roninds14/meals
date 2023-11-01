import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
import 'package:meals/models/settings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Widget _createSwutch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChanged,
    );
  }

  var settings = Settings();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Configurações'),
          centerTitle: true,
        ),
        drawer: const MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Configurações',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _createSwutch(
                    'Sem glutém',
                    'Se exibe refeições sem glutém',
                    settings.isGlutenFree,
                    (value) => setState(() => settings.isGlutenFree = value),
                  ),
                  _createSwutch(
                    'Sem lactose',
                    'Se exibe refeições sem lactose',
                    settings.isGlutenFree,
                    (value) => setState(() => settings.isLactoseFree = value),
                  ),
                  _createSwutch(
                    'Vegana',
                    'Se exibe refeições veganas',
                    settings.isGlutenFree,
                    (value) => setState(() => settings.isVegan = value),
                  ),
                  _createSwutch(
                    'Vegetariana',
                    'Se exibe refeições vegetarianas',
                    settings.isGlutenFree,
                    (value) => setState(() => settings.isVegan = value),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
