import 'package:flutter/material.dart';
import 'package:widget_spinner/widget_spinner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Spinner Test',
      home: WidgetSpinnerExample(),
    );
  }
}

class WidgetSpinnerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Spinner Test'),
      ),
      body: Center(
        child: WidgetSpinner(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
