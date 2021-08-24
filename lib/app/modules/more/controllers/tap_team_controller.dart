
import 'package:espn/config/base_config.dart';
import 'package:espn/config/service.dart';
import 'package:get/get.dart';

import '../league_model.dart';

class TapTeamController extends GetxController {
  //TODO: Implement TapTeamController

  var _loading = false;
  bool get loading => _loading;
  late League _leagues = League();
  League get leagues => _leagues;
  @override
  void onInit() {
    super.onInit();
    _getSportsList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  _getSportsList() async{
    _loading = true;
    requestData(ServerPath.tapTeamList, 'get').then((value) {
      _loading = false;
      _leagues = League.fromJson(value);
      update();
    });
  }
}
