import 'package:flutter/material.dart';
import './alarm_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first app."),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildHeader(),
            _buildRow("Alarm", Icons.alarm, context),
            Divider(),
            _buildRow("Airport shuttle", Icons.airport_shuttle, context),
            Divider(),
            _buildRow("Casino", Icons.casino, context),
          ],
        ),
      ),
    );
  }

  Text _buildHeader() {
    return Text(
      "Hello world",
      style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent),
    );
  }

  _buildRow(String text, IconData iconData, BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tap");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return AlarmScreen(text);
          }),
        );
      },
      child: Container(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              iconData,
              size: 40.0,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
