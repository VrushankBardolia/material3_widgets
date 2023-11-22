import 'package:flutter/material.dart';
import 'package:m3_widgets/navigationbar.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
          child: Column(
            children: [

              // ======================================
              Text('Appbar', style: Theme.of(context).textTheme.headlineMedium),

              Card(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBar(
                    title: Text('Title'),
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBar(
                    leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_rounded)),
                    title: Text('Title'),
                    actions: [
                      IconButton(onPressed: (){}, icon: Icon(Icons. notifications)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                    ],
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBar(
                    centerTitle: true,
                    title: Text('Title'),
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBar(
                    centerTitle: true,
                    title: Text('Title'),
                    leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_rounded)),
                    actions: [
                      IconButton(onPressed: (){}, icon: Icon(Icons. notifications)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                    ],
                  ),
                ),
              ),

              const Divider(height: 12),
              const SizedBox(height: 20),

              // ======================================
              Text('Bottom Bar', style: Theme.of(context).textTheme.headlineMedium),

              BottomAppBar(
                child: IconTheme(
                  data: Theme.of(context).iconTheme,
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.graphic_eq)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.link_rounded)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.copy)),
                    ],
                  ),
                ),
              ),

              const Divider(height: 12),
              const SizedBox(height: 20),

              // ======================================
              Text('Navigation Bar', style: Theme.of(context).textTheme.headlineMedium),

              FilledButton.tonal(
                  child: const Text('Navigation Bar Demo'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationDemo(),));
                  },
              )
            ],
          )
      ),
    );
  }
}
