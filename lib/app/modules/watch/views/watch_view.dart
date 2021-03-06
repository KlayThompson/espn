import 'package:espn/app/modules/watch/views/featured_view.dart';
import 'package:espn/app/modules/watch/views/originals_view.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/watch_controller.dart';

class WatchView extends GetView<WatchController> {
  final WatchController watch = Get.put(WatchController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: watchAppbar(),
      body: Container(
        color: ColorConfig.mainColor,
        child: TabBarView(
            children: [
              FeaturedView(),
              OriginalsView(),
            ]
        ),
      ),
    ));
  }

  // appBar
  AppBar watchAppbar() {
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
        indicatorColor: ColorConfig.watchRed,
        indicatorWeight: 4,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
        tabs: [
          Tab(text: 'FEATURED',),
          Tab(text: 'ORIGINALS',),
        ],
      ),
    );
  }
}
