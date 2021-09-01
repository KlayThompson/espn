import 'package:espn/config/base_config.dart';
import 'package:espn/config/service.dart';
import 'package:get/get.dart';

import '../feature_model.dart';

class WatchController extends GetxController {
  //TODO: Implement WatchController

  var _loadingFeatured = false;
  bool get loadingFeatured => _loadingFeatured;

  late Feature _featured = Feature();
  Feature get featured => _featured;
  @override
  void onInit() {
    super.onInit();
    getFeatured();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  getFeatured() async {
    _loadingFeatured = true;
    await requestData(ServerPath.featured, 'get').then((value) {
      _loadingFeatured = false;
      _featured = Feature.fromJson(value['page']);
      update();
    });
  }
}
