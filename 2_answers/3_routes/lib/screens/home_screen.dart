import 'package:flutter/material.dart';

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
            _buildRow("Alarm", Icons.alarm),
            Divider(),
            _buildRow("Airport shuttle", Icons.airport_shuttle),
            Divider(height: 5.0 ,),
            _buildRow("Casino", Icons.casino),
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

  Row _buildRow(String text, IconData iconData) {
    return Row(
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
    );
  }
}
