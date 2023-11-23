import 'package:flutter/material.dart';
import 'package:m3_widgets/screens/selection.dart';
import 'package:m3_widgets/screens/textInput.dart';
import '../screens/buttons.dart';
import '../screens/communication.dart';
import '../screens/containment.dart';
import '../screens/navigation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
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
                Tab(text:'Selection'),
                Tab(text:'Text Input'),
              ]
          ),
        ),
        body: const TabBarView(
          children: [
            Buttons(),
            Communication(),
            Containment(),
            Navigation(),
            Selection(),
            TextInput()
          ],
        ),
      ),
    );
  }
}
