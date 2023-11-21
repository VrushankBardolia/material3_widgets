import 'package:flutter/material.dart';

class Containment extends StatelessWidget {
  const Containment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Alerts', style: TextStyle(fontSize: 20)),
            FilledButton.tonal(
              child: const Text('Alert Dialog'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('Alert Dialog'),
                          content: Text('This is Alert Dialog'),
                          actions: [
                            TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Okay'))
                          ],
                        );
                      }
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
