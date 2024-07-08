import 'package:flutter/material.dart';

class pupupMenuButtonWidget extends StatefulWidget {  @override
  State<pupupMenuButtonWidget> createState() => pupupmenubuttonState();

}
class pupupmenubuttonState extends State<pupupMenuButtonWidget>{
  String item1= 'Item1';
  String item2= 'Item2';
  String title = 'Title';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pupupmenuButton'),
      ),
      body: Container(
        child: ListTile(
          title: Text('List'),
          trailing: PopupMenuButton(
            itemBuilder: (context) =>[
              PopupMenuItem(
                child: Text(item2),
                value: item1,
              ),
              PopupMenuItem(
                child: Text(item2),
                value: item2,
              )
            ],
            onSelected: (String newvalue){
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



