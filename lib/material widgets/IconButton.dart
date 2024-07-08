import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget{
  @override
  State<IconButtonWidget> createState() => IconButtonState();
}
class IconButtonState extends State<IconButtonWidget>{
  int click =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.add_box),
              iconSize: 50,
              onPressed: () {
                setState((){
                  click +=1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.remove_circle),
              iconSize: 50,
              onPressed: (){
                setState(() {
                  click -=1;
                });
              },
            ),
            Text(
              'Click $click',
              style: const TextStyle(fontSize: 40,),
            ),
          ],

        ),
      )
      )
    );
  }
}