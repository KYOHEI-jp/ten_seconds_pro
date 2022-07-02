import 'package:flutter/material.dart';
import 'package:ten_seconds/model/back_model.dart';

class BackScreen extends StatelessWidget {
  final List<BackModel> loadBackTraining = [
    BackModel(1, "ラットプルダウン"),
    BackModel(2, "デッドリフト"),
    BackModel(3, "ダンベルローイング"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("背中"),
        centerTitle: true,
      ),
      body: GestureDetector(
        child: GridView.builder(
          itemCount: loadBackTraining.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return PartsTile(partsName: loadBackTraining[index].title);
          },
        ),
        onTap: () {
        },
      ),
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
