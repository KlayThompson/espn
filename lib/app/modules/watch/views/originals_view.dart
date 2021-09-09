import 'package:espn/app/modules/share/view/activity-loading.dart';
import 'package:espn/app/modules/watch/controllers/watch_controller.dart';
import 'package:espn/app/modules/watch/views/featured/originals_header_view.dart';
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
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: OriginalsHeaderView(header: watch.originals.header!,),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    listViewChildren(watch.originals)
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }

  List<Widget> listViewChildren(Feature feature) {
    List<Widget> views = [];
    // if (feature.header != null) {
    //   views.add(OriginalsHeaderView(header: feature.header!,));
    // }
    feature.buckets!.forEach((buckets) {
      if (buckets.metadata!.imageFormat.toString() == '16x9') {
        views.add(Featured16x9CellView(bucket: buckets));
      } else if (buckets.metadata!.imageFormat.toString() == 'circle') {
        views.add(FeaturedCircleCellView(bucket: buckets));
      } else if (buckets.metadata!.imageFormat.toString() == '5x2') {
        views.add(Featured5x2CellView(bucket: buckets));
      } else if (buckets.metadata!.imageFormat.toString() == '2x3') {
        views.add(Featured2x3CellView(bucket: buckets));
      } else if (buckets.metadata!.imageFormat.toString() == '4x3') {
        views.add(Featured4x3CellView(bucket: buckets));
      } else if (buckets.metadata!.imageFormat.toString() == '1x1') {
        views.add(Featured1x1CellView(bucket: buckets));
      } else {
        views.add(Container(
          margin: EdgeInsets.only(bottom: 20),
          height: 200,
          width: SizeConfig.screenWidth,
          color: Colors.deepPurpleAccent,
        ));
      }
    });
    return views;
  }
}
