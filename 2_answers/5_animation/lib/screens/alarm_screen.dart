import 'package:flutter/material.dart';
import 'dart:math';

class AlarmScreen extends StatefulWidget {
  final String _alarmText;

  AlarmScreen(this._alarmText);

  @override
  AlarmScreenState createState() => AlarmScreenState();
}

class AlarmScreenState extends State<AlarmScreen>
    with SingleTickerProviderStateMixin {
  Color color = Colors.blue;
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    animation = Tween<double>(begin: -0.2, end: 0.2).animate(controller);
    animation.addListener(() {
      setState(() {});
    });
    controller.addStatusListener((status) {
      if (controller.status == AnimationStatus.completed) {
        controller.reverse();
      } else if(controller.status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._alarmText),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.forward();
        },
        child: Icon(Icons.casino),
      ),
      body: Center(
        child: Transform.rotate(
          angle: animation.value,
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
