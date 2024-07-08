import 'package:flutter/material.dart';

class ButtonbarWidget extends StatefulWidget{
  @override
  State<ButtonbarWidget> createState() => ButtonBarState();
}
class ButtonBarState extends State<ButtonbarWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonBar And Flat'),
      ),
      body: Center(
        child: ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton( child: const Text('Button 1'), onPressed: () {}),
                TextButton( child: const Text('Button 2'), onPressed: () {}),
                TextButton( child: const Text('Button 3'), onPressed: () {}),
              ],

        ),
      ),
    );
  }


}