import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/bottombar.dart';
import '../widgets/tabbar.dart';
import '../widgets/drawer.dart';
import '../widgets/navigationRail.dart';
import '../widgets/navigationbar.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
          child: Column(
            children: [

              // ======================================
              Text('Appbar', style: Theme.of(context).textTheme.headlineMedium),

              // Appbar
              FilledButton.tonal(
                child: const Text('Appbar Demo'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AppbarDemo()));
                },
              ),

              const Divider(height: 12),
              const SizedBox(height: 20),

              // ======================================
              Text('Bottom Bar', style: Theme.of(context).textTheme.headlineMedium),

              // Bottom app bar
              FilledButton.tonal(
                child: const Text('Bottom Appbar Demo'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomBarDemo()));
                },
              ),

              const Divider(height: 12),
              const SizedBox(height: 20),

              // ======================================
              Text('Navigation Bar', style: Theme.of(context).textTheme.headlineMedium),

              FilledButton.tonal(
                  child: const Text('Navigation Bar Demo'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigationDemo()));
                  },
              ),

              const Divider(height: 12),
              const SizedBox(height: 20),

              // ======================================
              Text('Navigation Drawer', style: Theme.of(context).textTheme.headlineMedium),

              FilledButton.tonal(
                child: const Text('Navigation Drawer Demo'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DrawerDemo()));
                },
              ),

              const Divider(height: 12),
              const SizedBox(height: 20),

              // ======================================
              Text('Navigation Rail', style: Theme.of(context).textTheme.headlineMedium),

              FilledButton.tonal(
                child: const Text('Navigation Drawer Demo'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigationRailDemo()));
                },
              ),

              const Divider(height: 12),
              const SizedBox(height: 20),

              // ======================================
              Text('Tabbar', style: Theme.of(context).textTheme.headlineMedium),

              FilledButton.tonal(
                child: const Text('Tabbar Demo'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TabbarDemo()));
                },
              ),
            ],
          )
      ),
    );
  }
}
