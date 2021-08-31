import 'package:espn/config/base_config.dart';
import 'package:espn/config/service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var count = 0;
  @override
  void onInit() {
    super.onInit();
    print('init HomeController');
    getHomeFeed();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  getHomeFeed() async {
    await requestData(ServerPath.homeFeed, 'get').then((value) => {
      print('Home data has been loaded')
    });
  }
}
