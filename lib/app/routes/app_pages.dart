import 'package:espn/app/modules/more/views/edit_preferences_view.dart';
import 'package:espn/app/modules/more/views/tap_team_view.dart';
import 'package:get/get.dart';

import 'package:espn/app/modules/espn-plus/bindings/espn_plus_binding.dart';
import 'package:espn/app/modules/espn-plus/views/espn_plus_view.dart';
import 'package:espn/app/modules/home/bindings/home_binding.dart';
import 'package:espn/app/modules/home/views/home_view.dart';
import 'package:espn/app/modules/index/bindings/index_binding.dart';
import 'package:espn/app/modules/index/views/index_view.dart';
import 'package:espn/app/modules/more/bindings/more_binding.dart';
import 'package:espn/app/modules/more/views/more_view.dart';
import 'package:espn/app/modules/scores/bindings/scores_binding.dart';
import 'package:espn/app/modules/scores/views/scores_view.dart';
import 'package:espn/app/modules/watch/bindings/watch_binding.dart';
import 'package:espn/app/modules/watch/views/watch_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INDEX;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INDEX,
      page: () => IndexView(),
      binding: IndexBinding(),
    ),
    GetPage(
      name: _Paths.SCORES,
      page: () => ScoresView(),
      binding: ScoresBinding(),
    ),
    GetPage(
      name: _Paths.MORE,
      page: () => MoreView(),
      binding: MoreBinding(),
    ),
    GetPage(
      name: _Paths.WATCH,
      page: () => WatchView(),
      binding: WatchBinding(),
    ),
    GetPage(
      name: _Paths.ESPN_PLUS,
      page: () => EspnPlusView(),
      binding: EspnPlusBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PREFERENCES,
      page: () => EditPreferencesView(),
    ), // 设置喜欢关注球队页面
    GetPage(
      name: _Paths.TAP_TEAM,
      page: () => TapTeamView(),
    ), // 选择喜欢的球队页面
  ];
}
