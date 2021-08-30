import 'package:espn/config/base_config.dart';
import 'package:espn/config/service.dart';
import 'package:get/get.dart';

import '../articles_model.dart';

class EspnPlusController extends GetxController {
  //TODO: Implement EspnPlusController

  var _loading = false;
  bool get loading => _loading;

  late Articles _articles = Articles();
  Articles get articles => _articles;

  @override
  void onInit() {
    super.onInit();
    getArticles();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  getArticles() async {
    _loading = true;
    await requestData(ServerPath.articles, 'get').then((value) {
      _loading = false;
      _articles = Articles.fromJson(value);
    });
  }
}
