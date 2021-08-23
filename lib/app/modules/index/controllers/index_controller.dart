import 'package:get/get.dart';

class IndexController extends GetxController {
  //TODO: Implement IndexController

  var tabIndex = 4;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
