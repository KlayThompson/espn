import 'package:espn/config/base_config.dart';
import 'package:espn/config/service.dart';
import 'package:get/get.dart';

import '../feature_model.dart';

class WatchController extends GetxController {
  //TODO: Implement WatchController

  var _loadingFeatured = false;
  bool get loadingFeatured => _loadingFeatured;

  var _loadingOriginals = false;
  bool get loadingOriginals => _loadingOriginals;

  late Feature _featured = Feature();
  Feature get featured => _featured;

  late Feature _originals = Feature();
  Feature get originals => _originals;
  @override
  void onInit() {
    super.onInit();
    getFeatured();
    getOriginals();
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

  getOriginals() async {
    _loadingOriginals = true;
    await requestData(ServerPath.originals, 'get').then((value) {
      _loadingOriginals = false;
      print(value);
      _originals = Feature.fromJson(value['page']);
      update();
    });
  }
}
