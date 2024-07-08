import 'package:flutter/material.dart';

class DropdownbuttonWidget extends StatefulWidget{
  @override
  State<DropdownbuttonWidget> createState() => dropdownState();

}
class dropdownState extends State<DropdownbuttonWidget>{
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDownButton'),
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.menu),
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
              // underline: Container(
              //   height: ,
              //   color: Colors.white,
              // ),

            items: const [
              DropdownMenuItem<String>(
                value: 'One',
                child: Text('One',style: TextStyle(fontSize: 30)),
              ),
              DropdownMenuItem<String>(
                value: 'Two',
                child: Text('Two',style: TextStyle(fontSize: 30)),
              ),
              DropdownMenuItem<String>(
                value: 'Three',
                child: Text('Three',style: TextStyle(fontSize: 30)),
              ),
            ],
            onChanged: (String? newvalue) {
              setState(() {
                dropdownValue = newvalue!;
              });
            },

          ),

        ) ,
      ),
    );
  }

}