import 'package:espn/config/base_config.dart';
import 'package:espn/config/service.dart';
import 'package:get/get.dart';

import '../privots_model.dart';
import '../scores_model.dart';

class ScoresController extends GetxController {
  //TODO: Implement ScoresController

  var _loading = false;
  bool get loading => _loading;

  //球队列表
  late Scores _scores = Scores();
  Scores get scores => _scores;

  late List<Pivots> _subPivots = [];
  List<Pivots> get subPivots => _subPivots;

  late Pivots _topPivots = Pivots();
  Pivots get topPivots => _topPivots;
  @override
  void onInit() {
    super.onInit();
    _getScoresList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  _getScoresList() async{
    _loading = true;
    await requestData(ServerPath.scores, 'get').then((value) {
      _loading = false;
      _scores = Scores.fromJson(value);
      _topPivots = Pivots.fromJson(value['pivots'][0][0]);
      _subPivots = Pivots.fromJson(value['pivots'][1]) as List<Pivots>;
      update();
    });
  }
}
