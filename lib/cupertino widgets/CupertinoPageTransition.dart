import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageTransitionWidget extends StatelessWidget {
  const CupertinoPageTransitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cupertino Page Transition'),
        ),
        child: Center(
          child: CupertinoButton(
            child: Text('Show Page Transition'),
            onPressed: () {
              Navigator.of(context).push(_createPageRoute());
            },
          ),
        ),
      ),
    );
  }

  Route _createPageRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => NextPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return CupertinoPageTransition(
          primaryRouteAnimation: animation,
          secondaryRouteAnimation: secondaryAnimation,
          linearTransition: true,
          child: child,
        );
      },
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Next Page'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('Go Back'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
