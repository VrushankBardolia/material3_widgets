import 'package:flutter/material.dart';

class Containment extends StatelessWidget {
  const Containment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [

            // ======================================
            Text('Alerts', style: Theme.of(context).textTheme.headlineMedium),

            // Alert Dialog
            FilledButton.tonal(
                child: const Text('Alert Dialog'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Alert Dialog'),
                          content: const Text('This is Alert Dialog'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Okay'))
                          ],
                        );
                      }
                  );
                }
            ),

            // Full Screen Alert
            FilledButton.tonal(
                child: const Text('Full Screen Alert'),
                onPressed: () {
                  showGeneralDialog(
                      barrierColor: Theme.of(context).colorScheme.background,
                      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
                      context: context,
                      pageBuilder: (context, Animation animation, Animation secondaryAnimation) {
                        return Column(children: [
                          const SizedBox(height: 50,),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {Navigator.of(context).pop();},
                                  icon: const Icon(Icons.arrow_back_rounded)),
                              const Text('Full Screen Alert', style: TextStyle(fontSize: 20))
                            ],
                          )
                        ]);
                      }
                  );
                }
            ),

            const Divider(height: 12),
            const SizedBox(height: 20),

            // ======================================
            Text('Bottom Sheet', style: Theme.of(context).textTheme.headlineMedium),

            // Show Modal Bottom Sheet
            FilledButton.tonal(
              child: const Text('Show Modal Bottom Sheet'),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return SizedBox(
                          height: 200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Show Modal Bottom Sheet'),
                                TextButton(
                                    onPressed: () => Navigator.of(context).pop(),
                                    child: const Text('Back'))
                              ],
                            ),
                          )
                      );
                    }
                );
              },
            ),

            // Show Bottom Sheet
            FilledButton.tonal(
              child: const Text('Show Bottom Sheet'),
              onPressed: () {
                showBottomSheet(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                          height: 200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Show Bottom Sheet'),
                                TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    child: const Text('Back'))
                              ],
                            ),
                          )
                      );
                    }
                );
              },
            ),

            const Divider(height: 12),
            const SizedBox(height: 20),

            // ======================================
            Text('Cards', style: Theme.of(context).textTheme.headlineMedium),

            // Elevated Card
            const Card(child: SizedBox(
                    height: 100, child: Center(child: Text('Elevated Card')))
            ),

            // Filled Card
            Card(
                color: Theme.of(context).colorScheme.surfaceTint,
                child: SizedBox(height: 100,
                    child: Center(
                      child: Text('Filled Card',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onInverseSurface),
                      )
                    )
                )
            ),

            // Outlined Card
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline),
                borderRadius: const BorderRadius.all(Radius.circular(12))
              ),
              child: const SizedBox(
                    height: 100, child: Center(child: Text('Outlined Card')))
            ),

            const Divider(height: 12),
            const SizedBox(height: 20),

            // ======================================
            Text('Divider', style: Theme.of(context).textTheme.headlineMedium),

            // Divider with 4 thickness
            const Divider(thickness: 4),

            // Blue colored Divider with 8 thickness
            const Divider(thickness: 8, color: Colors.blue),

            const SizedBox(height: 20),
            const Divider(height: 12),

            // ======================================
            Text('ListTile', style: Theme.of(context).textTheme.headlineMedium),

            // Only title
            const Card(child: ListTile(title: Text('Title'))),

            // Title & Subtitle
            const Card(
              child: ListTile(
                title: Text('Title'),
                subtitle: Text('Subtitle'),
              )
            ),

            // Title with leading
            const Card(
              child: ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Title')
              )
            ),

            // Title & subtitle with leading
            const Card(
              child: ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Title'),
                subtitle: Text('Subtitle'),
              )
            ),

            // Title with trailing
            const Card(
              child: ListTile(
                trailing: Icon(Icons.more_vert),
                title: Text('Title')
              )
            ),

            // Title & subtitle with trailing
            const Card(
              child: ListTile(
                trailing: Icon(Icons.more_vert),
                title: Text('Title'),
                subtitle: Text('Subtitle'),
              )
            ),

            // Title with leading & trailing
            const Card(
              child: ListTile(
                leading: Icon(Icons.bookmark),
                trailing: Icon(Icons.more_vert),
                title: Text('Title')
              )
            ),

            // Title & subtitle with leading & trailing
            const Card(
              child: ListTile(
                leading: Icon(Icons.bookmark),
                trailing: Icon(Icons.more_vert),
                title: Text('Title'),
                subtitle: Text('Subtitle'),
              )
            ),

            // Title & subtitle with leading & trailing also a three line ListTile
            const Card(
              child: ListTile(
                leading: Icon(Icons.bookmark),
                trailing: Icon(Icons.more_vert),
                title: Text('Title'),
                subtitle: Text('Subtitle and also allow to 3-Line ListTile'),
                isThreeLine: true,
              )
            ),
          ],
        ),
      ),
    );
  }
}
