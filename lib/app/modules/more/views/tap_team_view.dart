import 'package:espn/app/modules/more/controllers/tap_team_controller.dart';
import 'package:espn/app/routes/app_pages.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../league_model.dart';
import '../teams_model.dart';

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
          print('shua xin le ...........');
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
                  Expanded(child: _selectTeamsView()),
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

  //顶部搜索框
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
        child: InkWell(
          onTap: () => Get.toNamed(Routes.SEARCH_TEAM),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(CupertinoIcons.search, color: Color(0xffCDCDCD),),
              SizedBox(width: 10,),
              Text('Search for teams', style: TextStyle(color: Color(0xffCDCDCD), fontSize: 16),),
            ],
          ),
        )
      ),
    );
  }

  //搜索框下面选择面板
  Widget _selectTeamsView() {
    return Container(
      width: SizeConfig.screenWidth,
      child: Row(
        children: [
          _leftLeagueList(),
          _rightTeamsGrid()
        ],
      ),
    );
  }

  //左侧联盟选择面板
  Widget _leftLeagueList() {
    List<Widget> list = [];
    // for(int i = 0; i < tm.leagues.favoriteLeagues!.length; i++) {
    //   FavoriteLeagues element = tm.leagues.favoriteLeagues![i];
    //
    // }
    tm.leagues.favoriteLeagues!.forEach((element) {
      list.add(_leftLeagueCell(element, element.uid == tm.selectUid));
    });
    return Container(
      width: ScreenUtil().setWidth(110),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 1.0), //阴影xy轴偏移量
              blurRadius: 4.0, //阴影模糊程度
              spreadRadius: 1.0 //阴影扩散程度
          )
        ]
      ),
      child: ListView(
        shrinkWrap: true,
        children: list,
      ),
    );
  }

  Widget _leftLeagueCell(FavoriteLeagues league, bool select) {
    return Container(
      decoration: BoxDecoration(
        color: select ? ColorConfig.white : Color(0xffF1F1F1),
        border: Border(
          left: BorderSide(color: ColorConfig.mainColor, width: select ? 4 : 0)
        )
      ),
      width: ScreenUtil().setWidth(110),
      height: ScreenUtil().setHeight(72),
      padding: EdgeInsets.all(15),
      child: InkWell(
        onTap: () {
          tm.selectNewLeague(league.uid.toString(), league.url.toString());
          print('select ${league.name}');
        },
        child: Center(
          child: Text(
            league.name.toString(),
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: select ? ColorConfig.mainColor : Color(0xff828282)
            ),),
        ),
      ),
    );
  }

  //右侧球队选择面板
  Widget _rightTeamsGrid() {
    return Container(
      width: ScreenUtil().setWidth(375 - 110),
      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      // color: Colors.orange,
      child: tm.loadingTeams ? _LoadingView() : GridView.count(
        //水平子Widget之间间距
        crossAxisSpacing: 20.0,
        //垂直子Widget之间间距
        mainAxisSpacing: 30.0,
        //GridView内边距
        padding: EdgeInsets.all(10.0),
        crossAxisCount: 2,
        //子Widget宽高比例
        childAspectRatio: 1.0,
        children: getWidgetList(),
      )
    );
  }

  List<Widget> getWidgetList() {
    return tm.teams.teams!.map((item) => getItemContainer(item)).toList();
  }

  Widget getItemContainer(TeamItem item) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorConfig.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: Colors.black12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(item.logoURL.toString(), width: ScreenUtil().setWidth(47), height: ScreenUtil().setWidth(47),),
          SizedBox(height: 5,),
          Text(item.name.toString(), textAlign: TextAlign.center, style: TextStyle(color: Colors.black87),),
        ],
      ),
    );
  }
}

