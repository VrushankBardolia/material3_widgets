import 'package:flutter/material.dart';

enum Colors { blue, red , yellow }

class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  bool? isChecked = true;
  late  Colors? _colors = Colors.blue;
  bool? _lights = true;
  bool favorite = false;
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [

            // ======================================
            Text('Check Box', style: Theme.of(context).textTheme.headlineMedium),

            CheckboxListTile(
              title: const Text('Default Checkbox'),
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),

            CheckboxListTile(
              title: const Text('Error Checkbox'),
              isError: true,
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),

            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Disabled Checkbox'),
              isError: true,
              tristate: true,
              value: isChecked,
              onChanged: null
            ),

            const Divider(height: 12),
            const SizedBox(height: 20),

            // ======================================
            Text('Radio Button', style: Theme.of(context).textTheme.headlineMedium),

            RadioListTile(
              title: const Text('Blue'),
              value: Colors.blue,
              groupValue: _colors,
              onChanged: (Colors? value) {
                setState(() {
                  _colors = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('Red'),
              controlAffinity: ListTileControlAffinity.trailing,
              value: Colors.red,
              groupValue: _colors,
              onChanged: (Colors? value) {
                setState(() {
                  _colors = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('Yellow'),
              value: Colors.yellow,
              groupValue: _colors,
              onChanged: (Colors? value) {
                setState(() {
                  _colors = value;
                });
              },
            ),

            const Divider(height: 12),
            const SizedBox(height: 20),

            // ======================================
            Text('Switch', style: Theme.of(context).textTheme.headlineMedium),

            SwitchListTile(
              title: const Text('Lights'),
              value: _lights!,
              onChanged: (bool value) {
                setState(() {
                  _lights = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Lights'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _lights!,
              onChanged: (bool value) {
                setState(() {
                  _lights = value;
                });
              },
            ),

            const Divider(height: 12),
            const SizedBox(height: 20),

            // ======================================
            Text('Date Picker', style: Theme.of(context).textTheme.headlineMedium),

            FilledButton.tonal(
              child: const Text('Show Date Picker'),
              onPressed: (){
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                );
              },
            ),

            const Divider(height: 12),
            const SizedBox(height: 20),

            // ======================================
            Text('Time Picker', style: Theme.of(context).textTheme.headlineMedium),

            FilledButton.tonal(
              child: const Text('Show Time Picker'),
              onPressed: (){
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
              },
            ),

            const Divider(height: 12),
            const SizedBox(height: 20),

            // ======================================
            Text('Chip', style: Theme.of(context).textTheme.headlineMedium),

             Wrap(
               spacing: 8,
               alignment: WrapAlignment.center,
               children: [
                Chip(label: Text('Default')),
                Chip(
                    label: Text('Border Radius'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
                Chip(
                    label: Text('Deletable'),
                  deleteIcon: IconButton(onPressed: () {}, icon: Icon(Icons.delete),),
                ),
                ActionChip(
                  avatar: Icon(favorite ? Icons.favorite : Icons.favorite_border),
                  label: const Text('Save to favorites'),
                  onPressed: () {
                    setState(() {
                      favorite = !favorite;
                    });
                  },
                ),
              ],
            ),

            const Divider(height: 12),
            const SizedBox(height: 20),

            // ======================================
            Text('Popup Menu', style: Theme.of(context).textTheme.headlineMedium),

            PopupMenuButton(
              position: PopupMenuPosition.over,
              initialValue: _colors,
              onSelected: (Colors c) {
                setState(() {
                  _colors = c;
                });
              },
              itemBuilder: (BuildContext context) =>[
                const PopupMenuItem(
                  value: Colors.blue,
                  child: Text('Blue'),
                ),
                const PopupMenuItem(
                  value: Colors.red,
                  child: Text('Red'),
                ),
                const PopupMenuItem(
                  value: Colors.yellow,
                  child: Text('Yellow'),
                ),
              ],
            ),

            const Divider(height: 12),
            const SizedBox(height: 20),

            // ======================================
            Text('Slider', style: Theme.of(context).textTheme.headlineMedium),

            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 10,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
