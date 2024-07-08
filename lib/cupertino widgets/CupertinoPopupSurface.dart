import 'package:flutter/cupertino.dart';

class CupertinoPopupSurfaceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
          child: CupertinoButton(
            child: Text('Click'),
            onPressed: (){
              showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext builder){
                    return CupertinoPopupSurface(
                      child: Container(
                        color: CupertinoColors.activeOrange,
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 400,
                        child: Center(
                          child: CupertinoButton(
                            child: Text('Close'),
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ),
                    );

                  },
              );
            },
          ),

        )
    );
  }
}
