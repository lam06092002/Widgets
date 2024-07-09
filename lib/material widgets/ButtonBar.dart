import 'package:flutter/material.dart';

class ButtonBarWidget extends StatefulWidget {
  @override
  State<ButtonBarWidget> createState() => ButtonBarState();
}

class ButtonBarState extends State<ButtonBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonBar '),
      ),
      body: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextButton(child: const Text('Button 1'), onPressed: () {}),
            TextButton(child: const Text('Button 2'), onPressed: () {}),
            TextButton(child: const Text('Button 3'), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
