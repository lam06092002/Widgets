import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatefulWidget {
  @override
  State<PopupMenuButtonWidget> createState() => PopupMenuButtonState();
}

class PopupMenuButtonState extends State<PopupMenuButtonWidget> {
  String item1 = 'Item1';
  String item2 = 'Item2';
  String title = 'Title';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton'),
      ),
      body: Container(
        child: ListTile(
          title: Text('List'),
          trailing: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(item1),
                value: item1,
              ),
              PopupMenuItem(
                child: Text(item2),
                value: item2,
              )
            ],
            onSelected: (String newvalue) {
              setState(() {
                title = newvalue;
              });
            },
          ),
        ),
      ),
    );
  }
}
