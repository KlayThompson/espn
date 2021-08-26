import 'package:get/get.dart';

import 'package:espn/app/modules/more/controllers/search_team_controller.dart';
import 'package:espn/app/modules/more/controllers/tap_team_controller.dart';

import '../controllers/more_controller.dart';

class MoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchTeamController>(
      () => SearchTeamController(),
    );
    Get.lazyPut<TapTeamController>(
      () => TapTeamController(),
    );
    Get.lazyPut<MoreController>(
      () => MoreController(),
    );
  }
}
