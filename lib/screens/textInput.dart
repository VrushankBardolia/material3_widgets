import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({super.key});

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool fill = true;
  bool outlined = false;
  bool prefix = false;
  bool suffix = false;
  bool label = true;
  bool hint = false;
  bool helper = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 4),
            TextField(
              decoration: InputDecoration(
                prefixIcon: prefix ? Icon(Icons.search) : null,
                suffixIcon: suffix ? Icon(Icons.clear) : null,
                labelText: label ? 'Label Text' : null,
                hintText: hint ? 'Hint Text' : null,
                helperText: helper ? 'Helper Text' : null,
                filled: fill,
                border: outlined ? OutlineInputBorder() : null
              ),
            ),

            SwitchListTile(
              title: Text('Filled'),
                value: fill,
                onChanged: (bool value){
                  setState(() {
                    fill = value;
                  });
                }
            ),
            SwitchListTile(
              title: Text('Outline'),
                value: outlined,
                onChanged: (bool value){
                  setState(() {
                    outlined = value;
                  });
                }
            ),
            SwitchListTile(
              title: Text('Prefix Icon'),
                value: prefix,
                onChanged: (bool value){
                  setState(() {
                    prefix = value;
                  });
                }
            ),
            SwitchListTile(
              title: Text('Suffix Icon'),
                value: suffix,
                onChanged: (bool value){
                  setState(() {
                    suffix = value;
                  });
                }
            ),
            SwitchListTile(
              title: Text('Label Text'),
                value: label,
                onChanged: (bool value){
                  setState(() {
                    label = value;
                  });
                }
            ),
            SwitchListTile(
              title: Text('Hint Text'),
                value: hint,
                onChanged: (bool value){
                  setState(() {
                    hint = value;
                  });
                }
            ),
            SwitchListTile(
              title: Text('Helper Text'),
                value: helper,
                onChanged: (bool value){
                  setState(() {
                    helper = value;
                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}
