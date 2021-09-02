import 'package:espn/app/modules/share/view/activity-loading.dart';
import 'package:espn/app/modules/watch/controllers/watch_controller.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../feature_model.dart';
import 'featured/featured_16x9_cell.dart';
import 'featured/featured_1x1_cell.dart';
import 'featured/featured_2x3_cell.dart';
import 'featured/featured_4x3_cell.dart';
import 'featured/featured_5x2_cell.dart';
import 'featured/featured_circle_cell.dart';

class OriginalsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WatchController>(
      builder: (watch) {
        if (watch.loadingOriginals) {
          return ActivityLoading();
        } else {
          return Container(
            child: ListView.builder(
              itemCount: watch.originals.buckets!.length,
              itemBuilder: (context, index) {
                return listViews(index, watch.originals);
              },
            ),
          );
        }
      },
    );
  }


  Widget listViews(int index, Feature feature) {
    if (feature.buckets![index].metadata!.imageFormat.toString() == '16x9') {
      return Featured16x9CellView(bucket: feature.buckets![index]);
    } else if (feature.buckets![index].metadata!.imageFormat.toString() == 'circle') {
      return FeaturedCircleCellView(bucket: feature.buckets![index]);
    } else if (feature.buckets![index].metadata!.imageFormat.toString() == '5x2') {
      return Featured5x2CellView(bucket: feature.buckets![index]);
    } else if (feature.buckets![index].metadata!.imageFormat.toString() == '2x3') {
      return Featured2x3CellView(bucket: feature.buckets![index]);
    } else if (feature.buckets![index].metadata!.imageFormat.toString() == '4x3') {
      return Featured4x3CellView(bucket: feature.buckets![index]);
    } else if (feature.buckets![index].metadata!.imageFormat.toString() == '1x1') {
      return Featured1x1CellView(bucket: feature.buckets![index]);
    }
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 200,
      width: SizeConfig.screenWidth,
      color: Colors.deepPurpleAccent,
    );
  }
}
