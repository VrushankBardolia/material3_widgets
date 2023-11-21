import 'package:flutter/material.dart';

class Communication extends StatelessWidget {
  const Communication({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Badge', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Badge(label: Text('69'),child: Icon(Icons.email_rounded)),
                  Badge(label: Text('4'),child: Icon(Icons.notifications)),
                  Badge(child: Icon(Icons.home))
                ],
              ),
              const SizedBox(height: 12),
              const Divider(height: 1),
              const SizedBox(height: 20),
              const Text('Progress Indicator', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 12),
              const CircularProgressIndicator(),
              const SizedBox(height: 12),
              const LinearProgressIndicator(),
              const SizedBox(height: 12),
              const Divider(height: 1),
              const SizedBox(height: 20),
              const Text('Snackbar', style: TextStyle(fontSize: 20)),
              FilledButton.tonalIcon(
                label: const Text('Show Snackbar'),
                icon: const Icon(Icons.message_outlined),
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('This is SnackBar'),
                      action: SnackBarAction(
                          label: 'Okay',
                          onPressed: (){
                            Navigator.pop(context);
                          }
                      ),
                    )
                  );
                },
              )
            ],
          )
      ),
    );
  }
}
