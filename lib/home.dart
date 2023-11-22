import 'package:flutter/material.dart';
import 'package:m3_widgets/buttons.dart';
import 'package:m3_widgets/communication.dart';
import 'package:m3_widgets/containment.dart';
import 'package:m3_widgets/navigation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('M3'),
          bottom: const TabBar(
            isScrollable: true,
              tabs: [
                Tab(text:'Buttons'),
                Tab(text:'Communication'),
                Tab(text:'Containment'),
                Tab(text:'Navigation'),
              ]
          ),
        ),
        body: const TabBarView(
          children: [
            Buttons(),
            Communication(),
            Containment(),
            Navigation()
          ],
        )
      ),
    );
  }
}
