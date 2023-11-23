import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer Demo'),
      ),

      // Drawer
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
      body: Center(
        child: FilledButton.tonalIcon(
          icon: const Icon(Icons.arrow_back_rounded),
          label: const Text('Back'),
          onPressed: (){
            Navigator.of(context).pop();
          },
        )
      ),
    );
  }
}
