import 'package:espn/app/modules/espn-plus/views/espn_plus_view.dart';
import 'package:espn/app/modules/home/views/home_view.dart';
import 'package:espn/app/modules/more/views/more_view.dart';
import 'package:espn/app/modules/scores/views/scores_view.dart';
import 'package:espn/app/modules/watch/views/watch_view.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  @override
  Widget build(BuildContext context) {
    //设置尺寸（填写设计中设备的屏幕尺寸）如果设计基于360dp * 690dp的屏幕
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 667),
        orientation: Orientation.portrait);
    return GetBuilder<IndexController>(
      builder: (_) {
        return Theme( // 包一层去除水波纹效果
            data: ThemeData(
              primaryColor: ColorConfig.mainColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: _.tabIndex,
                items: items,
                selectedItemColor: ColorConfig.mainColor,
                selectedFontSize: 13,
                unselectedFontSize: 13,
                onTap: (int index) {
                  _.changeTabIndex(index);
                },
              ),
              body: IndexedStack(
                index: _.tabIndex,
                children: _getPagesList,
              ),
            ));
      },
    );
  }
}

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: 'Home',
  ),
  BottomNavigationBarItem(
      icon: Image(image: AssetImage(ImagePath.tabBarScores,), width: 28,),
      activeIcon: Image(image: AssetImage(ImagePath.tabBarScoresActive,), width: 28,),
      label: 'Scores'),
  BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.play_fill),
      label: 'Watch'),
  BottomNavigationBarItem(
      icon: Image(image: AssetImage(ImagePath.tabBarPlus,), width: 28,),
      activeIcon: Image(image: AssetImage(ImagePath.tabBarPlusActive,), width: 28,),
      label: 'ESPN+'),
  BottomNavigationBarItem(
      icon: Icon(Icons.menu_rounded),
      label: 'More'),
];

List<Widget> _getPagesList = [
  HomeView(),
  ScoresView(),
  WatchView(),
  EspnPlusView(),
  MoreView()
];