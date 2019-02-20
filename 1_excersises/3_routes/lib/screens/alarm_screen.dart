import 'package:flutter/material.dart';

class AlarmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alarm !!!"),
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
