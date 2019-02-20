import 'package:flutter/material.dart';

class AlarmScreen extends StatelessWidget {
  final String _alarmText;

  AlarmScreen(this._alarmText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_alarmText),
      ),
      body: Center(
        child: Icon(
          Icons.alarm,
          size: 80.0,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
