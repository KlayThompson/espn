import 'package:get/get.dart';

import '../controllers/scores_controller.dart';

class ScoresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScoresController>(
      () => ScoresController(),
    );
  }
}
