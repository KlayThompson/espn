import 'package:espn/app/modules/share/view/activity-loading.dart';
import 'package:espn/app/modules/watch/controllers/watch_controller.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FeaturedView extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WatchController>(
      builder: (watch) {
        if (watch.loadingFeatured) {
          return ActivityLoading();
        } else {
          return Container(
            child: ListView.builder(
              itemCount: watch.featured.buckets!.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 200,
                  width: SizeConfig.screenWidth,
                  color: Colors.deepPurpleAccent,
                );
              },
            ),
          );
        }
      },
    );
  }
}
