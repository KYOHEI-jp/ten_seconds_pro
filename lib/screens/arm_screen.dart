import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ten_seconds/data/arm_data.dart';
import 'package:ten_seconds/model/arm_model.dart';
import 'package:ten_seconds/screens/weight_screen.dart';

class ArmScreen extends StatefulWidget {
  @override
  _ArmScreenState createState() => _ArmScreenState();
}

class _ArmScreenState extends State<ArmScreen> {
  List<ArmModel> arms = <ArmModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    arms = getArmParts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("腕"),
          ],
        ),
      ),
      body: GestureDetector(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: arms.length,
            itemBuilder: (BuildContext context, int index) {
              return PartsTile(partsName: arms[index].title);
            },
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return WeightScreen();
              },
            ));
          }),
    );
  }
}

class PartsTile extends StatelessWidget {
  final partsName;

  PartsTile({this.partsName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
          ),
          Container(
            margin: EdgeInsets.all(6),
            alignment: Alignment.center,
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              partsName,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class ItemDetail extends StatelessWidget {
  final String index;
  ItemDetail(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("item detail"),
      ),
      body: Center(
        child: Text("this page is item$index"),
      ),
    );
  }
}