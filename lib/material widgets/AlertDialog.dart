import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget{
  @override
  State<AlertDialogWidget> createState() => AlertDialogState();
}
class AlertDialogState extends State<AlertDialogWidget>{
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
            content: Text('Alert Dialog'),
          )
          );
        },
      ),
    );
  }

}