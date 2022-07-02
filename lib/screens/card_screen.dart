import 'package:flutter/material.dart';
import 'package:ten_seconds/screens/arm_screen.dart';
import 'package:ten_seconds/screens/leg_screen.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var parts = [
      _partsItem("胸"),
      _partsItem("脚"),
      _partsItem("背中"),
      _partsItem("肩"),
      _partsItem("大腿四頭筋")
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: GestureDetector(
        child: GridView.count(
          crossAxisCount: 2,
          children: parts,
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ArmScreen();
              },
            ),
          );
        },
      ),
    );
  }
}

Widget _partsItem(String parts) {
  return Container(
    child: Card(
      margin: EdgeInsets.all(15),
      child: Container(
        alignment: Alignment.center,
        height: 90,
        width: 90,
        color: Colors.blue,
        child: Text(
          "胸",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
    ),
  );
}