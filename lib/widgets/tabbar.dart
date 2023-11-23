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
              Card(
                shadowColor: Colors.transparent,
                margin: const EdgeInsets.all(8.0),
                child: SizedBox.expand(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.directions_car_filled_rounded),
                      Text('Car',style: Theme.of(context).textTheme.titleMedium,),
                    ],
                  )
                ),
              ),
              Card(
                shadowColor: Colors.transparent,
                margin: const EdgeInsets.all(8.0),
                child: SizedBox.expand(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.train_outlined),
                      Text('Train',style: Theme.of(context).textTheme.titleMedium,),
                    ],
                  )
                ),
              ),
              Card(
                shadowColor: Colors.transparent,
                margin: const EdgeInsets.all(8.0),
                child: SizedBox.expand(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.flight_rounded),
                      Text('Flight',style: Theme.of(context).textTheme.titleMedium,),
                    ],
                  )
                ),
              ),
            ],
          ),
        )
    );
  }
}
