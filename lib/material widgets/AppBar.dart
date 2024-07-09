import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Widget '),
        backgroundColor: Colors.blue,
        elevation: 4.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Action when menu button is pressed
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Action when search button is pressed
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Action when more button is pressed
            },
          ),
        ],
      ),
      body: Center(
        child: Text('body AppBar'),
      ),
    );
  }
}
