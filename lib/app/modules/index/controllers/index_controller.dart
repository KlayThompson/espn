import 'package:get/get.dart';

class IndexController extends GetxController {
  //TODO: Implement IndexController

  var tabIndex = 3;
  var _darkBottom = true;
  bool get darkBottom => _darkBottom;

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
    if (index == 2 || index == 3) {
      _darkBottom = true;
    } else {
      _darkBottom = false;
    }
    update();
  }
}
