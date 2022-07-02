import 'package:ten_seconds/model/back_model.dart';

List<BackModel> getBackParts() {
  List<BackModel> backParts = [];
  BackModel backModel;

  backModel = new BackModel(1,"");
  backParts.add(backModel);

  backModel = new BackModel(2,"ロー");
  backParts.add(backModel);

  backModel = new BackModel(3, "ワンハンドダンベルローイング");
  backParts.add(backModel);

  backModel = new BackModel(4, "デッドリフト");
  backParts.add(backModel);

  return backParts;
}