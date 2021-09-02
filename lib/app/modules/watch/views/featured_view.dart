import 'package:espn/app/modules/share/view/activity-loading.dart';
import 'package:espn/app/modules/watch/controllers/watch_controller.dart';
import 'package:espn/app/modules/watch/views/featured/featured_16x9_cell.dart';
import 'package:espn/app/modules/watch/views/featured/featured_header_view.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../feature_model.dart';

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
                return listViews(index, watch.featured);
              },
            ),
          );
        }
      },
    );
  }


  Widget listViews(int index, Feature feature) {
    if (index == 0) {
      return FeaturedHeaderViw(bucket: feature.buckets![index]);
    } else if (feature.buckets![index].metadata!.imageFormat.toString() == '16x9') {
      return Featured16x9CellView(bucket: feature.buckets![index]);
    }
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 200,
      width: SizeConfig.screenWidth,
      color: Colors.deepPurpleAccent,
    );
  }
}
