import 'package:cached_network_image/cached_network_image.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../feature_model.dart';

class Featured1x1CellView extends StatelessWidget {

  final Buckets bucket;
  Featured1x1CellView({Buckets, required this.bucket});

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
            height: ScreenUtil().setWidth(90),
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
      width: ScreenUtil().setWidth(90),
      padding: EdgeInsets.only(left: 10, bottom: 10),
      child: Container(
        width: ScreenUtil().setWidth(90),
        height: ScreenUtil().setWidth(90),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
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
    );
  }
}
