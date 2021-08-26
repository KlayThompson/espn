import 'package:espn/app/modules/more/controllers/search_team_controller.dart';
import 'package:espn/app/modules/more/controllers/tap_team_controller.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../search_team_list_model.dart';

class SearchTeamView extends GetView {
  final SearchTeamController st = Get.put(SearchTeamController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0.0,//title widget两边不留间隙
        brightness: Brightness.dark,
        leadingWidth: 3,
        leading: Container(),
        title: _appBarTitle(),
        actions: <Widget>[
          CupertinoButton(
            onPressed: () => Get.back(),
            child: Text('Cancel', style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.w500),),
          )
        ],
      ),
      body: Container(
        color: ColorConfig.bgColor,
        child: GetBuilder<SearchTeamController>(
          builder: (_) {
            if (_.searchTeamData.teamList?.length == null) {
              return Container();
            } else {
              return ListView.builder(
                itemCount: _.searchTeamData.teamList!.length,
                itemBuilder: (BuildContext context, int index) {
                  return _singleTeamCell(_.searchTeamData.teamList![index]);
                },
              );
            }
          },
        ),
      ),
    );
  }

  Widget _appBarTitle() {
    TextEditingController _controller = new TextEditingController();
    return Container(
        child: Container(
          height: 39,
          margin: EdgeInsets.fromLTRB(20, 10, 0, 15),
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
              Expanded(
                  child: CupertinoTextField(
                    autofocus: true,
                    controller: _controller,
                    onSubmitted: (val) {
                      st.searchTeam(val);
                    },
                    cursorColor: Colors.white,
                    textInputAction: TextInputAction.search,
                    style: TextStyle(
                      color: ColorConfig.white,
                      fontSize: 15
                    ),
                    suffix: IconButton(
                      icon: Icon(CupertinoIcons.clear_circled_solid, color: ColorConfig.diverColor,),
                      onPressed: () {
                        _controller.clear();
                      },
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff2C2C2C)
                    ),
                  ))
            ],
          ),
        )
    );
  }

  Widget _singleTeamCell(TeamList team) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
      height: ScreenUtil().setHeight(85),
      decoration: BoxDecoration(
        color: ColorConfig.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.black12, width: 1)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Image.network(team.image.toString(), width: ScreenUtil().setWidth(55), height: ScreenUtil().setWidth(55),),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(team.name.toString(), style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w500),),
                SizedBox(height: 3,),
                Text(team.label.toString(), style: TextStyle(color: Colors.black87, fontSize: 15)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
