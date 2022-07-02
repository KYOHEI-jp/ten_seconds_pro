import 'package:flutter/material.dart';

class LegScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("脚"),
      ),
      body: Text(
        "hあしあししし",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}