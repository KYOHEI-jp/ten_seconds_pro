import 'package:ten_seconds/model/arm_model.dart';

List<ArmModel> getArmParts() {
  //腕の種目のリストの入れ物
  List<ArmModel> armParts = [];
  ArmModel armModel;

  //腕の種目書いていく
  armModel = new ArmModel();
  armModel.title = "アームカール";
  armParts.add(armModel);

  armModel = new ArmModel();
  armModel.title = "ハンマーカール";
  armParts.add(armModel);

  armModel = new ArmModel();
  armModel.title = "プリーチャーカール";
  armParts.add(armModel);

  armModel = new ArmModel();
  armModel.title = "ワンハンドダンベルカール";
  armParts.add(armModel);
  
  armModel = new ArmModel();
  armModel.title = "ディップス";
  armParts.add(armModel);

  armModel = new ArmModel();
  armModel.title = "プレスダウン";
  armParts.add(armModel);

  armModel = new ArmModel();
  armModel.title = "フレンチプレス";
  armParts.add(armModel);
  return armParts;
}
