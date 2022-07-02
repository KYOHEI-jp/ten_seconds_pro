import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ten_seconds/list_view_screen.dart';
import 'package:ten_seconds/screens/all_parts_screen.dart';
import 'package:ten_seconds/screens/arm_screen.dart';
import 'package:ten_seconds/screens/back_screen.dart';
import 'package:ten_seconds/screens/card_screen.dart';
import 'package:ten_seconds/screens/leg_screen.dart';
import 'package:ten_seconds/screens/weight_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ten_seconds',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(title: 'ten seconds'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: WeightScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ListViewで表示したそれぞれに遷移する方法 腕タップしたらArmScreenへ
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
