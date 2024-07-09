
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  @override
  SliderWidgetState createState() => SliderWidgetState();
}

class SliderWidgetState extends State<SliderWidget> {
  double currentSliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Widget '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
              value: currentSliderValue,
              min: 0,
              max: 100,
              divisions: 5,
              label: currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  currentSliderValue = value;
                });
              },
            ),
            Text('Value: ${currentSliderValue.round()}'),
          ],
        ),
      ),
    );
  }
}
