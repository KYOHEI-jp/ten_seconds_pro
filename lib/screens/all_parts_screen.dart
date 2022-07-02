import 'package:flutter/material.dart';
import 'package:ten_seconds/data/all_parts_data.dart';
import 'package:ten_seconds/model/all_parts_model.dart';
import 'package:ten_seconds/screens/arm_screen.dart';

class AllPartsScreen extends StatefulWidget {

  @override
  _AllPartsScreenState createState() => _AllPartsScreenState();
}

class _AllPartsScreenState extends State<AllPartsScreen> {
  List<AllPartsModel> allParts = <AllPartsModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allParts = getAllParts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("部位を選んでね"),
          ],
        ),
      ),
      body: GestureDetector(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: allParts.length,
            itemBuilder: (BuildContext context, int index) {
              return PartsTile(partsName: allParts[index].allParts);
            },
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return ArmScreen();
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
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          )
        ],
      ),
    );
  }
}
