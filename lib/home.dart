import 'package:flutter/material.dart';
import '../screens/buttons.dart';
import '../screens/communication.dart';
import '../screens/containment.dart';
import '../screens/navigation.dart';

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
        ),
        drawer: const Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(child: Text('V',style: TextStyle(fontSize: 24))),
                accountName: Text('Vrushank Bardolia'),
                accountEmail: Text('vrushank1793@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text('Search'),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notification'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Information'),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help & FAQs'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
