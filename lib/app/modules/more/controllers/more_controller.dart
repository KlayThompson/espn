import 'package:espn/app/modules/more/more_model.dart';
import 'package:espn/config/base_config.dart';
import 'package:espn/config/service.dart';
import 'package:get/get.dart';

class MoreController extends GetxController {
  //TODO: Implement MoreController

  final count = 0.obs;
  var _loading = false;
  late MoreSection _moreSection = MoreSection();
  MoreSection get moreSection => _moreSection;
  bool get loading => _loading;
  @override
  void onInit() {
    super.onInit();
    getMoreList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  getMoreList() async {
    _loading = true;
    await requestData(ServerPath.moreSections, 'get').then((value) {
      _moreSection = MoreSection.fromJson(value);
      _loading = false;
      update();
    });
  }
}
