import 'package:flutter/material.dart';
import 'package:ten_seconds/screens/arm_screen.dart';

class ListViewScreen extends StatefulWidget {
  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<Widget> items = [
    ListTile(
      leading: Icon(Icons.local_activity, size: 50),
      title: Text('Activity'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_airport, size: 50),
      title: Text('Airport'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_atm, size: 50),
      title: Text('ATM'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_bar, size: 50),
      title: Text('Bar'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_cafe, size: 50),
      title: Text('Cafe'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_car_wash, size: 50),
      title: Text('Car Wash'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_convenience_store, size: 50),
      title: Text('Heart Shaker'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_dining, size: 50),
      title: Text('Dining'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_drink, size: 50),
      title: Text('Drink'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_florist, size: 50),
      title: Text('Florist'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_gas_station, size: 50),
      title: Text('Gas Station'),
      subtitle: Text(
        'Description here',
        style: TextStyle(color: Colors.lightBlueAccent),
      ),
    ),
    ListTile(
      leading: Icon(Icons.local_grocery_store, size: 50),
      title: Text('Grocery Store'),
      subtitle: Text('Description here'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hogehogehoge"),
      ),
      body: GestureDetector(
        child: Center(
          child: ListWheelScrollView(
            itemExtent: 60,
            children: items,
            physics: FixedExtentScrollPhysics(),
            perspective: 0.0000000001,
          ),
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ArmScreen()));
        },
      ),
    );
  }
}
