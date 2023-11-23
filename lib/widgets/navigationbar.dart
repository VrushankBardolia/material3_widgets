import 'package:flutter/material.dart';

class NavigationDemo extends StatefulWidget {
  const NavigationDemo({super.key});

  @override
  State<NavigationDemo> createState() => _NavigationDemoState();
}

class _NavigationDemoState extends State<NavigationDemo> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationBar Demo'),
      ),

      // Bottom navigation bar
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Theme.of(context).colorScheme.primaryContainer,
        selectedIndex: currentPageIndex,
        destinations: const [

          // Navigation item
          NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home'
          ),

          // Navigation item
          NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search'
          ),

          // Navigation item
          NavigationDestination(
              icon: Badge(child: Icon(Icons.notifications)),
              label: 'Notification'
          ),

          // Navigation item
          NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Profile'
          ),
        ],
      ),
      body: <Widget>[

        // 1st navigation screen
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text('Home page',style: Theme.of(context).textTheme.titleLarge),
            ),
          ),
        ),

        // 2nd navigation screen
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text('Search page',style: Theme.of(context).textTheme.titleLarge),
            ),
          ),
        ),

        // 3rd navigation screen
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text('Notification page',style: Theme.of(context).textTheme.titleLarge),
            ),
          ),
        ),

        // 4th navigation screen
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text('Profile page', style: Theme.of(context).textTheme.titleLarge),
            ),
          ),
        ),
      ][currentPageIndex], // Mandatory line to add
    );
  }
}
