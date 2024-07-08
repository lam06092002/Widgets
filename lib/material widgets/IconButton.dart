import 'package:flutter/material.dart';

class iconButtonWidget extends StatefulWidget{
  @override
  State<iconButtonWidget> createState() => iconButtonState();
}
class iconButtonState extends State<iconButtonWidget>{
  int click =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iconbutton'),
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