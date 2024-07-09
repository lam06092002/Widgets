import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  @override
  RadioWidgetState createState() => RadioWidgetState();
}

class RadioWidgetState extends State<RadioWidget> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Widget '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            title: const Text('Option 1'),
            leading: Radio<int>(
              value: 1,
              groupValue: selectedValue,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Option 2'),
            leading: Radio<int>(
              value: 2,
              groupValue: selectedValue,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Selected option: $selectedValue'),
                ),
              );
            },
            child: Text('Show Selected'),
          ),
        ],
      ),
    );
  }
}
