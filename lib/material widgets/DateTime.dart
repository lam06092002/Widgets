import 'package:flutter/material.dart';

class DateTimePickerWidget extends StatefulWidget {
  @override
  DateTimePickerWidgetState createState() => DateTimePickerWidgetState();
}

class DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  late DateTime selectedDate;
  late TimeOfDay selectedTime;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    selectedTime = TimeOfDay.now();
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date & Time Picker '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Selected Date: ${selectedDate.toLocal()}'),
            ElevatedButton(
              onPressed: () => selectDate(context),
              child: Text('Select Date'),
            ),
            SizedBox(height: 20),
            Text('Selected Time: $selectedTime'),
            ElevatedButton(
              onPressed: () => selectTime(context),
              child: Text('Select Time'),
            ),
          ],
        ),
      ),
    );
  }
}
