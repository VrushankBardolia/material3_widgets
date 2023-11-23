import 'package:flutter/material.dart';

class AppbarDemo extends StatefulWidget {
  const AppbarDemo({super.key});

  @override
  State<AppbarDemo> createState() => _AppbarDemoState();
}

class _AppbarDemoState extends State<AppbarDemo> {
  bool centerTitle = false;
  bool action = false;
  double elevate=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        centerTitle: centerTitle,
        actions: action? [
          IconButton(onPressed: (){}, icon: const Icon(Icons. notifications)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.person)),
        ] : null,
        elevation: elevate,
      ),
      body: Center(
        child: Column(
          children: [
            SwitchListTile(
                title: const Text('Make Title Center'),
                value: centerTitle,
                onChanged: (bool value){
                  setState(() {
                    centerTitle = value;
                  });
                }
            ),
            SwitchListTile(
                title: const Text('Action Icon Buttons'),
                value: action,
                onChanged: (bool value){
                  setState(() {
                    action = value;
                  });
                }
            ),
            Text('Elevation',style: Theme.of(context).textTheme.bodyLarge),
            Slider(
              value: elevate,
              max: 10,
              divisions: 10,
              label: elevate.round().toString(),
              onChanged: (double value) {
                setState(() {
                  elevate = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
