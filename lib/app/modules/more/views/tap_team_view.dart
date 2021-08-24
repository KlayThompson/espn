import 'package:espn/app/modules/more/controllers/tap_team_controller.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../league_model.dart';

class TapTeamView extends GetView {
  final TapTeamController tm = Get.put(TapTeamController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tap your favorite teams'),
        centerTitle: true,
        brightness: Brightness.dark,
        leading: IconButton(
          onPressed: () { Get.back(); },
          icon: Icon(Icons.arrow_back,),
        ),
        actions: [
          CupertinoButton(
              child: Text('Finish', style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.w500),),
              onPressed: () {
                Get.back();
              })
        ],
      ),
      body: GetBuilder<TapTeamController>(
        builder: (_) {
          if (_.loading) {
            return _LoadingView();
          } else {
            return Container(
              width: SizeConfig.screenWidth,
              color: ColorConfig.bgColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _configSearchBar(),
                  _leftLeagueList()
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget _LoadingView() {
    return Center(
      child: CupertinoActivityIndicator(
        radius: 15,
      ),
    );
  }
  
  Widget _configSearchBar() {
    return Container(
      color: ColorConfig.mainColor,
      child: Container(
        height: 39,
        margin: EdgeInsets.fromLTRB(20, 10, 20, 15),
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: Color(0xff2C2C2C),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(CupertinoIcons.search, color: Color(0xffCDCDCD),),
            SizedBox(width: 10,),
            Text('Search for teams', style: TextStyle(color: Color(0xffCDCDCD), fontSize: 16),),
          ],
        ),
      ),
    );
  }

  Widget _leftLeagueList() {
    List<Widget> list = [];
    tm.leagues.favoriteLeagues!.forEach((element) {
      list.add(_leftLeagueCell(element, false));
    });
    return Container(
      color: Colors.orange,
      width: ScreenUtil().setWidth(110),
      child: ListView(
        shrinkWrap: true,
        children: list,
      ),
    );
  }

  Widget _leftLeagueCell(FavoriteLeagues league, bool select) {
    return Container(
      width: ScreenUtil().setWidth(110),
      height: ScreenUtil().setHeight(72),
      child: Center(
        child: Text(league.name.toString()),
      ),
    );
  }
}

