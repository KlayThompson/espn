import 'package:espn/app/routes/app_pages.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EditPreferencesView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferences and Alert', style: TextStyle(color: ColorConfig.black),),
        leading: IconButton(
          onPressed: () { Get.back(); },
          icon: Icon(Icons.arrow_back, color: ColorConfig.black,),
        ),
        actions: [
          CupertinoButton(
              child: Text('Done', style: TextStyle(fontSize: 16, color: ColorConfig.buttonColor,fontWeight: FontWeight.w500),),
              onPressed: () {
                Get.back();
              })
        ],
        backgroundColor: ColorConfig.lightAppBar,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: SizeConfig.screenWidth,
        color: ColorConfig.bgColor,
        child: ListView(
          children: [
            _myTeamsCard(),
            _myTeamsCard()
          ],
        ),
      ),
    );
  }
  
  Widget _myTeamsCard() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Card(
        margin: EdgeInsets.only(left: 0),
        child: Container(
          padding: EdgeInsets.fromLTRB(22, 22, 22, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('MY TEAMS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              SizedBox(height: 5,),
              Divider(indent: 0, color: ColorConfig.diverColor,height: 20,),
              Container(
                height: 45,
                child: Row(
                  children: [
                    Image.network(
                      'http://a.espncdn.com/combiner/i?img=/i/teamlogos/soccer/500/default-team-logo-500.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(width: 20,),
                    Text('Not following any teams', style: TextStyle(fontSize: 16),),
                  ],
                ),
              ),
              Divider(indent: 0, color: ColorConfig.diverColor,height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                      child: Text('+ Add Teams',style: TextStyle(color: ColorConfig.buttonColor, fontWeight: FontWeight.w500),),
                      onPressed: () {
                        Get.toNamed(Routes.TAP_TEAM);
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
