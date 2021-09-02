import 'package:cached_network_image/cached_network_image.dart';
import 'package:espn/app/modules/watch/feature_model.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Featured5x2CellView extends StatelessWidget {

  final Buckets bucket;
  Featured5x2CellView({Buckets, required this.bucket});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          common5x2CellHeader(),
          Container(
            width: SizeConfig.screenWidth,
            height: ScreenUtil().setWidth(335)/(5/2),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: bucket.metadata!.displayCount,
              itemBuilder: (context, index) {
                return common5x2Cell(bucket.contents![index]);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget common5x2CellHeader() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              bucket.name.toString().toUpperCase(),
              maxLines: 1,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConfig.white,
                  fontSize: 18
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'See All',
              style: TextStyle(
                  color: ColorConfig.buttonColor,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget common5x2Cell(Contents content) {
    return Container(
      width: ScreenUtil().setWidth(335),
      height: ScreenUtil().setWidth(335)/(5/2),
      padding: EdgeInsets.only(left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          width: ScreenUtil().setWidth(335),
          height: ScreenUtil().setWidth(335)/(5/2),
          imageUrl: content.imageHref.toString(),
          placeholder: (context, url) => Container(
            color: ColorConfig.mainColor,
            width: ScreenUtil().setWidth(335),
            height: ScreenUtil().setWidth(335)/(5/2),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
