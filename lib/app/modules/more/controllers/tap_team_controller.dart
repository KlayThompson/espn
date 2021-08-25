
import 'package:espn/app/modules/more/teams_model.dart';
import 'package:espn/config/base_config.dart';
import 'package:espn/config/service.dart';
import 'package:get/get.dart';

import '../league_model.dart';

class TapTeamController extends GetxController {
  //TODO: Implement TapTeamController

  var _loading = false;
  bool get loading => _loading;
  var _loadingTeams = false;
  bool get loadingTeams => _loadingTeams;
  late League _leagues = League();
  League get leagues => _leagues;
  var _selectUid = ''; // 选择左侧的league
  String get selectUid => _selectUid;
  late Teams _teams = Teams();
  Teams get teams => _teams;
  @override
  void onInit() {
    super.onInit();
    _getSportsLeagueList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  _getSportsLeagueList() async{
    _loading = true;
    await requestData(ServerPath.tapTeamList, 'get').then((value) {
      _loading = false;
      _leagues = League.fromJson(value);
      if (_leagues.favoriteLeagues!.length > 0) {
        _selectUid = _leagues.favoriteLeagues![0].uid!;
        _getLeagueTeams(_leagues.favoriteLeagues![0].url!);
      }
      update();
    });
  }

  // 选择新的league 发送通知
  selectNewLeague(String uid, String url) {
    _selectUid = uid;
    _getLeagueTeams(url);
    update();
  }

  _getLeagueTeams(String requestUrl) async{
    _loadingTeams = true;
    await requestData(requestUrl, 'get').then((value) {
      _loadingTeams = false;
      _teams = Teams.fromJson(value);
      update();
    });
  }
}
