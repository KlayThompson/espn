import 'package:espn/config/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../search_team_list_model.dart';

class SearchTeamController extends GetxController {
  //TODO: Implement SearchTeamController


  //搜索球队列表
  late SearchData _searchTeamData = SearchData();
  SearchData get searchTeamData => _searchTeamData;
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

  searchTeam(String keyword) async {
    print(keyword);
    await requestData('http://sportscenter.fan.api.espn.com/apis/v1/search?query=${keyword}&excludeEvents=true&excludeVideos=true&excludeWatch=true&type=team&seeAll=true&lang=en&region=us&locale=CN&version=68&appName=espnapp&profile=sportscenter_v1&device=handset', 'get')
        .then((value) {
      SearchTeamList teamList = SearchTeamList.fromJson(value);
      if (teamList.searchData!.length == 0) {
        Get.snackbar('Oh No', 'Nothing found here...', backgroundColor: Colors.white,);
      } else {
        _searchTeamData = teamList.searchData![0];
        print(value);
        update();
      }
    });
  }
}
