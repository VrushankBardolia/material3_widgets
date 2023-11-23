import 'package:flutter/material.dart';

class NavigationRailDemo extends StatefulWidget {
  const NavigationRailDemo({super.key});

  @override
  State<NavigationRailDemo> createState() => _NavigationRailDemoState();
}

class _NavigationRailDemoState extends State<NavigationRailDemo> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAlignment = -1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Rail'),
      ),
      body: SafeArea(
        child: Row(
          children: [

            // Main Component (Navigation Rail)
            NavigationRail(
              selectedIndex: _selectedIndex,
              labelType: labelType,
              groupAlignment: groupAlignment,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              leading: showLeading ? FloatingActionButton(
                onPressed: (){},
                elevation: 0,
                child: const Icon(Icons.add),
              )  : null,
              trailing: showTrailing ? const Icon(Icons.more_horiz) : null,
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home),
                    label: Text('Home')
                ),
                NavigationRailDestination(
                    icon: Icon(Icons.favorite_border_outlined),
                    selectedIcon: Icon(Icons.favorite),
                    label: Text('Favourite')
                ),
                NavigationRailDestination(
                    icon:Icon(Icons.star_border),
                    selectedIcon: Icon(Icons.star),
                    label: Text('Notification')
                ),
              ],
            ),

            // Vertical Divider
            const VerticalDivider(),

            // Settings
            Column(
              children: [
                Text('Label Type',style: Theme.of(context).textTheme.titleMedium),
                Text(labelType.name),
                SizedBox(
                  width: 250,
                  child: RadioListTile(
                      title: const Text('None'),
                      value: NavigationRailLabelType.none,
                      groupValue: labelType,
                      onChanged: (value){
                        setState(() {
                          labelType = value!;
                        });
                      }
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: RadioListTile(
                      title: const Text('Selected'),
                      value: NavigationRailLabelType.selected,
                      groupValue: labelType,
                      onChanged: (value){
                        setState(() {
                          labelType = value!;
                        });
                      }
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: RadioListTile(
                      title: const Text('All'),
                      value: NavigationRailLabelType.all,
                      groupValue: labelType,
                      onChanged: (value){
                        setState(() {
                          labelType = value!;
                        });
                      }
                  ),
                ),
                SizedBox(width: 250, child: Divider(thickness: 1)),
                Text('Group Alignment',style: Theme.of(context).textTheme.titleMedium),
                Text('$groupAlignment'),
                SizedBox(
                  width: 250,
                  child: RadioListTile(
                    title: Text('Top'),
                      value: -1.0,
                      groupValue: groupAlignment,
                      onChanged: (value){
                        setState(() {
                          groupAlignment = value!;
                        });
                      }
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: RadioListTile(
                    title: const Text('Middle'),
                      value: 0.0,
                      groupValue: groupAlignment,
                      onChanged: (value){
                        setState(() {
                          groupAlignment = value!;
                        });
                      }
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: RadioListTile(
                    title: const Text('Bottom'),
                      value: 1.0,
                      groupValue: groupAlignment,
                      onChanged: (value){
                        setState(() {
                          groupAlignment = value!;
                        });
                      }
                  ),
                ),
                SizedBox(width: 250, child: Divider(thickness: 1)),
                SizedBox(
                  width: 250,
                  child: SwitchListTile(
                    title: Text('Show Leading'),
                      value: showLeading,
                      onChanged: (bool value){
                        setState(() {
                          showLeading = value;
                        });
                      }
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: SwitchListTile(
                    title: Text('Show Trailing'),
                      value: showTrailing,
                      onChanged: (bool value){
                        setState(() {
                          showTrailing = value;
                        });
                      }
                  ),
                )
                // FilledButton.tonal(
                //   onPressed: () {
                //     setState(() {
                //       showLeading = !showLeading;
                //     });
                //   },
                //   child:
                //   Text(showLeading ? 'Hide Leading' : 'Show Leading'),
                // ),
                // FilledButton.tonal(
                //   onPressed: () {
                //     setState(() {
                //       showTrailing = !showTrailing;
                //     });
                //   },
                //   child:
                //   Text(showTrailing ? 'Hide Leading' : 'Show Leading'),
                // )
              ],
            )
          ],
        ),
      )
    );
  }
}

