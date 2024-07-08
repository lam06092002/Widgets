
import 'package:flutter/cupertino.dart';

class CupertinoActionSheetWidget extends StatelessWidget {
  const CupertinoActionSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
          child: CupertinoButton(
            child: Text('ActionSheet'),
            onPressed: (){
              showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) => CupertinoActionSheet(
                    title: Text(''),
                    actions: <CupertinoActionSheetAction>[
                      CupertinoActionSheetAction(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text('Do something 1'),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text('Do something 2'),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text('Do something 3'),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: CupertinoActivityIndicator(),
                      ),
                    ],
                  )
              );
            },
          ),
        ),
    );
  }
}
