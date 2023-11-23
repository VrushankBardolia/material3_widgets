import 'package:flutter/material.dart';

class NavigationRailDemo extends StatefulWidget {
  const NavigationRailDemo({super.key});

  @override
  State<NavigationRailDemo> createState() => _NavigationRailDemoState();
}

class _NavigationRailDemoState extends State<NavigationRailDemo> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Rail'),
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            labelType: NavigationRailLabelType.selected,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            leading: FloatingActionButton(
              onPressed: (){},
              elevation: 0,
              child: const Icon(Icons.add),
            ),
            trailing: const Icon(Icons.more_horiz),
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: Text('Home')
              ),
              NavigationRailDestination(
                  icon: Icon(Icons.favorite_border_outlined),
                  selectedIcon: Icon(Icons.favorite),
                  label: Text('Favourite')
              ),
              NavigationRailDestination(
                  icon:Icon(Icons.star_border),
                  selectedIcon: Icon(Icons.star),
                  label: Text('Notification')
              ),
            ],
          ),
        ],
      ),
    );
  }
}

