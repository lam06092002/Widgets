import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cupertino Dialog Example'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                child: Text('Show Cupertino Dialog'),
                onPressed: () {
                  _showCupertinoDialog(context);
                },
              ),
              SizedBox(height: 20),
              CupertinoButton(
                child: Text('Show Cupertino Alert Dialog'),
                onPressed: () {
                  _showCupertinoAlertDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCupertinoDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Cupertino Dialog'),
          content: Text('This is a Cupertino Dialog.'),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => FullscreenDialogPage(),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoAlertDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Cupertino Alert Dialog'),
          content: Text('This is a Cupertino Alert Dialog.'),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => FullscreenDialogPage(),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
class FullscreenDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Fullscreen Dialog'),
        leading: CupertinoButton(
          child: Text('Back'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      child: Center(
        child: Text('Fullscreen '),
      ),
    );
  }
}