import 'package:get/get.dart';

import '../controllers/espn_plus_controller.dart';

class EspnPlusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EspnPlusController>(
      () => EspnPlusController(),
    );
  }
}
