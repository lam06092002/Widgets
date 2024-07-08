import 'package:flutter/material.dart';


class floatingactionbuttonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FloatingActionButton'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),

        ),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50,),
        color: Colors.yellow,

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}