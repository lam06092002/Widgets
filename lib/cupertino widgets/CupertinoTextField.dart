import 'package:flutter/cupertino.dart';

class CupertinoTextFieldWidget extends StatelessWidget {
  final TextEditingController textController= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.activeOrange,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: CupertinoTextField(
              controller: textController,
            ),
          ),
        ),
      ),
    );
  }
}
