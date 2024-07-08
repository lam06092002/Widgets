import 'package:flutter/material.dart';

class AlertdialogWidget extends StatefulWidget{
  @override
  State<AlertdialogWidget> createState() => AlertdialogState();
}
class AlertdialogState extends State<AlertdialogWidget>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Show Alert Dialog'),
        onPressed: (){
          showDialog(
              context: context, builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Close'),
                  ),
                ],
            title: Text('AlertDialog'),
            contentPadding: EdgeInsets.all(20),
            content: Text('This is the Alert Dialog'),
          )
          );
        },
      ),
    );
  }

}