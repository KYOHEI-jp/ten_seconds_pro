import 'package:ten_seconds/model/all_parts_model.dart';

List<AllPartsModel> getAllParts() {
  List<AllPartsModel> allParts = [];

  AllPartsModel allPartsModel;

  //全部位を書くこと
  allPartsModel = new AllPartsModel();
  allPartsModel.allParts = "肩";
  allParts.add(allPartsModel);

  allPartsModel = new AllPartsModel();
  allPartsModel.allParts = "二頭";
  allParts.add(allPartsModel);

  allPartsModel = new AllPartsModel();
  allPartsModel.allParts = "三頭";
  allParts.add(allPartsModel);

  allPartsModel = new AllPartsModel();
  allPartsModel.allParts = "背中";
  allParts.add(allPartsModel);

  allPartsModel = new AllPartsModel();
  allPartsModel.allParts = "脚";
  allParts.add(allPartsModel);

  allPartsModel = new AllPartsModel();
  allPartsModel.allParts = "胸";
  allParts.add(allPartsModel);

  return allParts;
}