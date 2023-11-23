import 'package:flutter/material.dart';

class TabbarDemo extends StatelessWidget {
  const TabbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tabbar Demo'),
            bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Text('Car'),
                    icon: Icon(Icons.directions_car_filled_rounded),
                  ),
                  Tab(
                    child: Text('Train'),
                    icon: Icon(Icons.train_outlined),
                  ),
                  Tab(
                    child: Text('Flight'),
                    icon: Icon(Icons.flight_rounded),
                  ),
                ]
            ),
          ),
          body: TabBarView(
            children: [

            ],
          ),
        )
    );
  }
}
