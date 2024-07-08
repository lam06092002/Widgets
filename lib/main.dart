import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:metarial_widget/material widgets/AlertDialog.dart';
import 'package:metarial_widget/material widgets/CheckBox.dart';
import 'package:metarial_widget/material widgets/DateTime.dart';
import 'package:metarial_widget/material widgets/DropdownButton.dart';
import 'package:metarial_widget/material widgets/SimpleDialog.dart';
import 'package:metarial_widget/material widgets/Slider.dart';
import 'package:metarial_widget/material widgets/Switch.dart';
import 'package:metarial_widget/material widgets/TextField.dart';
import 'package:metarial_widget/material widgets/popupmenuButton.dart';
import 'package:metarial_widget/material widgets/radio.dart';
import 'cupertino widgets/CupertinoActionSheet.dart';
import 'cupertino widgets/CupertinoButton.dart';
import 'cupertino widgets/CupertinoDialog.dart';

import 'cupertino widgets/CupertinoPageTransition.dart';
import 'cupertino widgets/CupertinoPicker.dart';
import 'cupertino widgets/CupertinoPopupSurface.dart';
import 'cupertino widgets/CupertinoSlider.dart';
import 'cupertino widgets/CupertinoTabScaffold.dart';
import 'cupertino widgets/CupertinoTextField.dart';
import 'material widgets/IconButton.dart';
import 'material widgets/FloatingActionButton.dart';
import 'material widgets/buttonBar.dart';
import 'material widgets/listtile.dart';
import 'material widgets/scaffold.dart';
import 'material widgets/appBar.dart';
import 'material widgets/TabBar.dart';
import 'material widgets/bottomNavigationBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetMenu(),
      routes: {
        '/scaffold': (context) => ScaffoldWidget(),
        '/appbar': (context) => AppBarWidget(),
        '/bottomNavigationBar': (context) => BottomNavigationBarWidget(),
        '/tabBar': (context) => TabBarWidget(),
        '/listtile': (context) => ListTileWidget(),
        '/floatingactionbutton': (context) => floatingactionbuttonWidget(),
        '/iconButton': (context) => iconButtonWidget(),
        '/dropdown': (context) => DropdownbuttonWidget(),
        '/pupup': (context) => pupupMenuButtonWidget(),
        '/buttonbar': (context) => ButtonbarWidget(),
        '/checkbox': (context) => CheckboxWidget(),
        '/textfield': (context) => TextFieldWidget(),
        '/radio': (context) => RadioWidget(),
        '/switch': (context) => SwitchWidget(),
        '/slider': (context) => SliderWidget(),
        '/datetime': (context) => DateTimePickerWidget(),
        '/simpledialog': (context) => SimpleDialogWidget(),
        '/alertdialog': (context) => AlertdialogWidget(),
        '/cupertinobutton': (context) => CupertinoButtonWidget(),
        '/cupertinopicker': (context) => CupertinoPickersWidget(),
        '/cupertinoslider': (context) => CupertinoSliderWidget(),
        '/cupertinoTacScaffold': (context) => CupertinotabscaffoldWidget(),
        '/cupertinodialog': (context) => CupertinoDialogWidget(),
        '/cupertinotextfield': (context) => CupertinotextfieldWidget(),
        '/cupertinoPopupSurface': (context) => CupertinoPopupSurfaceWidget(),
        '/cupertinoActionSheet': (context) => CupertinoActionSheetWidget(),
        '/cupertinoPageTransition': (context) => CupertinoPageTransitionWidget(),

      },
    );
  }
}

class WidgetMenu extends StatelessWidget {
  final List<Map<String, String>> widgets = [
    {'name': 'Scaffold', 'route': '/scaffold'},
    {'name': 'AppBar', 'route': '/appbar'},
    {'name': 'BottomNavigationBar', 'route': '/bottomNavigationBar'},
    {'name': 'TapBar/ TapBarView', 'route': '/tabBar'},
    {'name': 'ListTile', 'route': '/listtile'},
    {'name': 'FloatingActionButton', 'route': '/floatingactionbutton'},
    {'name': 'IconButton', 'route': '/iconButton'},
    {'name': 'Dropdown', 'route': '/dropdown'},
    {'name': 'PupupMenuButton', 'route': '/pupup'},
    {'name': 'ButtonBar', 'route': '/buttonbar'},
    {'name': 'CheckBox ', 'route': '/checkbox'},
    {'name': 'TextField ', 'route': '/textfield'},
    {'name': 'Radio', 'route': '/radio'},
    {'name': 'Switch', 'route': '/switch'},
    {'name': 'Slider', 'route': '/slider'},
    {'name': 'DateTime', 'route': '/datetime'},
    {'name': 'SimpleDialog', 'route': '/simpledialog'},
    {'name': 'AlertDialog', 'route': '/alertdialog'},
    {'name': 'CupertinoButton', 'route': '/cupertinobutton'},
    {'name': 'CupertinoPicker', 'route': '/cupertinopicker'},
    {'name': 'CupertinoSlider', 'route': '/cupertinoslider'},
    {'name': 'CupertinoTabScaffold', 'route': '/cupertinoTacScaffold'},
    {'name': 'CupertinoDialog', 'route': '/cupertinodialog'},
    {'name': 'CupertinoTextField', 'route': '/cupertinotextfield'},
    {'name': 'CupertinoPopupSurface', 'route': '/cupertinoPopupSurface'},
    {'name': 'CupertinoActionSheet', 'route': '/cupertinoActionSheet'},
    {'name': 'CupertinoPageTransition', 'route': '/cupertinoPageTransition'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets Menu'),
      ),
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widgets[index]['name']!),
            onTap: () {
              Navigator.pushNamed(context, widgets[index]['route']!);
            },
          );
        },
      ),
    );
  }
}
