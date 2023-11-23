import 'package:flutter/material.dart';

class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  bool fab = false;
  FloatingActionButtonLocation FABLocation = FloatingActionButtonLocation.endDocked;

  void onFabLocationChanged(FloatingActionButtonLocation? value) {
    setState(() {
      FABLocation = value ?? FloatingActionButtonLocation.endDocked;
    });
  }

  static final List centerLocations =[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(onPressed: (){},icon: const Icon(Icons.favorite)),
            if(centerLocations.contains(FABLocation))const Spacer(),
            IconButton(onPressed: (){},icon: const Icon(Icons.share)),
          ],
        ),
      ),
      floatingActionButton: fab
          ? FloatingActionButton(
              onPressed: (){},
              child: const Icon(Icons.add),
            ) 
          : null,
      floatingActionButtonLocation:FABLocation,
      appBar: AppBar(
        title: const Text('Bottom app bar demo'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text('Floating Action Button'),
            value: fab,
            onChanged:(bool value) {
              setState(() {
                fab = value;
              });
            }
          ),
          Text('FAB Position',style: Theme.of(context).textTheme.titleLarge,),
          RadioListTile<FloatingActionButtonLocation>(
            title: const Text('Docked - End'),
            value: FloatingActionButtonLocation.endDocked,
            groupValue: FABLocation,
            onChanged: onFabLocationChanged,
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: const Text('Docked - Center'),
            value: FloatingActionButtonLocation.centerDocked,
            groupValue: FABLocation,
            onChanged: onFabLocationChanged,
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: const Text('Floating - End'),
            value: FloatingActionButtonLocation.endFloat,
            groupValue: FABLocation,
            onChanged: onFabLocationChanged,
          ),
          RadioListTile(
            title: const Text('Floating - Center'),
            value: FloatingActionButtonLocation.centerFloat,
            groupValue: FABLocation,
            onChanged: onFabLocationChanged,
          ),
        ],
      ),
    );
  }
}
