import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListTile')),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: CircleAvatar(child: Text('A')),
            title: Text('Headline1'),
            subtitle: Text('A'),
            trailing: Icon(Icons.face_3_outlined),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(child: Text('B')),
            title: Text('Headline12'),
            subtitle: Text('A.'),
            trailing: Icon(Icons.favorite_rounded),
          ),
          Divider(height: 100),
          ListTile(
            leading: CircleAvatar(child: Text('C')),
            title: Text('Headline123'),
            subtitle: Text("B."),
            trailing: Icon(Icons.favorite_border_sharp),
            isThreeLine: true,
          ),
          Divider(height: 50),
        ],
      ),
    );
  }
}
