import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickersWidget extends StatefulWidget {
  @override
  _CupertinoPickersWidgetState createState() => _CupertinoPickersWidgetState();
}

class _CupertinoPickersWidgetState extends State<CupertinoPickersWidget> {
  int _selectedPickerIndex = 0;

  final List<String> _pickerOptions = ['Cupertino Picker', 'Cupertino Date Picker', 'Cupertino Timer Picker'];

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
              0: Text(_pickerOptions[0]),
              1: Text(_pickerOptions[1]),
              2: Text(_pickerOptions[2]),
            },
            onValueChanged: (int value) {
              setState(() {
                _selectedPickerIndex = value;
              });
            },
            groupValue: _selectedPickerIndex,
          ),
          Expanded(
            child: _buildPicker(_selectedPickerIndex),
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
  _CupertinoPickerWidgetState createState() => _CupertinoPickerWidgetState();
}

class _CupertinoPickerWidgetState extends State<CupertinoPickerWidget> {
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
  _CupertinoDatePickerWidgetState createState() =>
      _CupertinoDatePickerWidgetState();
}

class _CupertinoDatePickerWidgetState extends State<CupertinoDatePickerWidget> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Selected Date: $_selectedDate'),
          SizedBox(height: 20),
          CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: _selectedDate,
            onDateTimeChanged: (DateTime newDate) {
              setState(() {
                _selectedDate = newDate;
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
  _CupertinoTimerPickerWidgetState createState() =>
      _CupertinoTimerPickerWidgetState();
}

class _CupertinoTimerPickerWidgetState extends State<CupertinoTimerPickerWidget> {
  late Duration _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedTime = Duration(hours: 0, minutes: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Selected Time: $_selectedTime'),
          SizedBox(height: 20),
          CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.hm,
            initialTimerDuration: _selectedTime,
            onTimerDurationChanged: (Duration newDuration) {
              setState(() {
                _selectedTime = newDuration;
              });
            },
          ),
        ],
      ),
    );
  }
}
