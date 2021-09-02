import 'package:cached_network_image/cached_network_image.dart';
import 'package:espn/app/modules/watch/feature_model.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FeaturedCircleCellView extends StatelessWidget {

  final Buckets bucket;
  FeaturedCircleCellView({Buckets, required this.bucket});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      child: Column(
        mainAxisSize:MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20),
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
          Container(
            width: SizeConfig.screenWidth,
            height: ScreenUtil().setWidth(138),
            // color: Colors.orange,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: bucket.contents!.length,
                itemBuilder: (context, index) {
                  return circleCell(bucket.contents![index]);
                }),
          )
        ],
      ),
    );
  }
  
  Widget circleCell(Contents content) {
    return Container(
      width: ScreenUtil().setWidth(105),
      child: Column(
        children: [
          Container(
            width: ScreenUtil().setWidth(90),
            height: ScreenUtil().setWidth(90),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(90)/2),
              color: Color(0xff444444)
            ),
            child: Center(
              child: CachedNetworkImage(
                imageUrl: content.imageHref.toString(),
                width: ScreenUtil().setWidth(40),
                height: ScreenUtil().setWidth(40),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(
            content.name.toString(),
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(190, 190, 190, 1),
              fontSize: 14
            ),
          ),
        ],
      ),
    );
  }
}
