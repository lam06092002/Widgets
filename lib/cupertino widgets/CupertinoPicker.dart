import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickersWidget extends StatefulWidget {
  @override
  CupertinoPickersWidgetState createState() => CupertinoPickersWidgetState();
}

class CupertinoPickersWidgetState extends State<CupertinoPickersWidget> {
  int selectedPickerIndex = 0;

  final List<String> pickerOptions = [
    'Cupertino Picker',
    'Cupertino Date Picker',
    'Cupertino Timer Picker'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Pickers '),
      ),
      body: Column(
        children: [
          CupertinoSegmentedControl<int>(
            children: {
              0: Text(pickerOptions[0]),
              1: Text(pickerOptions[1]),
              2: Text(pickerOptions[2]),
            },
            onValueChanged: (int value) {
              setState(() {
                selectedPickerIndex = value;
              });
            },
            groupValue: selectedPickerIndex,
          ),
          Expanded(
            child: _buildPicker(selectedPickerIndex),
          ),
        ],
      ),
    );
  }

  Widget _buildPicker(int index) {
    switch (index) {
      case 0:
        return CupertinoPickerWidget();
      case 1:
        return CupertinoDatePickerWidget();
      case 2:
        return CupertinoTimerPickerWidget();
      default:
        return Center(child: Text('Invalid selection'));
    }
  }
}

class CupertinoPickerWidget extends StatefulWidget {
  @override
  CupertinoPickerWidgetState createState() => CupertinoPickerWidgetState();
}

class CupertinoPickerWidgetState extends State<CupertinoPickerWidget> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  late String selectedItem = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Selected item: $selectedItem'),
          SizedBox(height: 20),
          CupertinoPicker(
            itemExtent: 32.0,
            onSelectedItemChanged: (index) {
              setState(() {
                selectedItem = items[index];
              });
            },
            children: items.map((item) => Text(item)).toList(),
          ),
        ],
      ),
    );
  }
}

class CupertinoDatePickerWidget extends StatefulWidget {
  @override
  CupertinoDatePickerWidgetState createState() => CupertinoDatePickerWidgetState();
}

class CupertinoDatePickerWidgetState extends State<CupertinoDatePickerWidget> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Selected Date: $selectedDate'),
          SizedBox(height: 20),
          CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: selectedDate,
            onDateTimeChanged: (DateTime newDate) {
              setState(() {
                selectedDate = newDate;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CupertinoTimerPickerWidget extends StatefulWidget {
  @override
  CupertinoTimerPickerWidgetState createState() => CupertinoTimerPickerWidgetState();
}

class CupertinoTimerPickerWidgetState extends State<CupertinoTimerPickerWidget> {
  late Duration selectedTime;

  @override
  void initState() {
    super.initState();
    selectedTime = Duration(hours: 0, minutes: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Selected Time: $selectedTime'),
          SizedBox(height: 20),
          CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.hm,
            initialTimerDuration: selectedTime,
            onTimerDurationChanged: (Duration newDuration) {
              setState(() {
                selectedTime = newDuration;
              });
            },
          ),
        ],
      ),
    );
  }
}
