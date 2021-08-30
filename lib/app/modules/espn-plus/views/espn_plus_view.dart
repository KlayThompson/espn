import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/espn_plus_controller.dart';
import 'articles_view.dart';

class EspnPlusView extends GetView<EspnPlusController> {
  final EspnPlusController pc = Get.put(EspnPlusController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: espnPlusAppbar(),
      body: Container(
        color: ColorConfig.mainColor,
        child: TabBarView(
            children: [
              Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      'You cannot access this content outside of the US. For users in Europe and Asia, Visit ESPN Player[www.espnplayer.com]',
                      style: TextStyle(color: ColorConfig.textColor, fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  )
              ),
              ArticlesView()
            ]
        ),
      ),
    ));
  }

  AppBar espnPlusAppbar() {
    return AppBar(
      title: Image(image: AssetImage(ImagePath.espnPlusTitle), width: 90, height: 20,),
      centerTitle: true,
      brightness: Brightness.dark,
      leadingWidth: 100,
      leading: Container(
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.search)),
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_down_circle)),
          ],
        ),
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.calendar)),
        IconButton(onPressed: (){}, icon: Icon(Icons.settings_outlined)),
      ],
      bottom: TabBar(
        indicatorColor: ColorConfig.plusYellow,
        indicatorWeight: 4,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
        tabs: [
          Tab(text: 'STREAM',),
          Tab(text: 'ARTICLES',),
        ],
      ),
    );
  }
}
