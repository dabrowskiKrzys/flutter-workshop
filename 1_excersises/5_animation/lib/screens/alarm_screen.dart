import 'package:flutter/material.dart';
import 'dart:math';

class AlarmScreen extends StatefulWidget {
  final String _alarmText;

  AlarmScreen(this._alarmText);

  @override
  AlarmScreenState createState() => AlarmScreenState();
}

class AlarmScreenState extends State<AlarmScreen> {
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._alarmText),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("click");
          var random = Random();
          setState(() {
            color = Color.fromRGBO(
              random.nextInt(255),
              random.nextInt(255),
              random.nextInt(255),
              1.0,
            );
          });
        },
        child: Icon(Icons.casino),
      ),
      body: Center(
        child: Transform.rotate(
          angle: 0.2,
          child: Icon(
            Icons.alarm,
            size: 80.0,
            color: color,
          ),
        ),
      ),
    );
  }
}
