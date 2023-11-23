import 'package:flutter/material.dart';

class AppbarDemo extends StatefulWidget {
  const AppbarDemo({super.key});

  @override
  State<AppbarDemo> createState() => _AppbarDemoState();
}

class _AppbarDemoState extends State<AppbarDemo> {
  bool centerTitle = false;
  bool action = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        centerTitle: centerTitle,
        actions: action? [
          IconButton(onPressed: (){}, icon: Icon(Icons. notifications)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        ] : null,
      ),
      body: Center(
        child: Column(
          children: [
            SwitchListTile(
                title: Text('Make Title Center'),
                value: centerTitle,
                onChanged: (bool value){
                  setState(() {
                    centerTitle = value;
                  });
                }
            ),
            SwitchListTile(
                title: Text('Action Icon Buttons'),
                value: action,
                onChanged: (bool value){
                  setState(() {
                    action = value;
                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}
