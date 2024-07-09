import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CupertinoSliderWidget extends StatefulWidget {
  @override
  CupertinoSliderWidgetState createState() => CupertinoSliderWidgetState();
}

class CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Slider '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Slider Value: ${(sliderValue * 100).toInt()}'),
            SizedBox(height: 20),
            CupertinoSlider(
              value: sliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}