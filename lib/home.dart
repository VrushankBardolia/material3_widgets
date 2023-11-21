import 'package:flutter/material.dart';
import 'package:m3_widgets/buttons.dart';
import 'package:m3_widgets/communication.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('M3'),
          bottom: const TabBar(
              tabs: [
                Tab(text:'Buttons'),
                Tab(text:'Communication'),
              ]
          ),
        ),
        body: const TabBarView(
          children: [
            Buttons(),
            Communication()
          ],
        )
      ),
    );
  }
}
