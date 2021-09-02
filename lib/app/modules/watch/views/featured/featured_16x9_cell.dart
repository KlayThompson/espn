import 'package:cached_network_image/cached_network_image.dart';
import 'package:espn/app/modules/watch/feature_model.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Featured16x9CellView extends StatelessWidget {
  final Buckets bucket;
  Featured16x9CellView({Buckets, required this.bucket});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      child: Column(
        mainAxisSize:MainAxisSize.min,
        children: [
          common16x9CellHeader(),
          Container(
            width: SizeConfig.screenWidth,
            height: ScreenUtil().setWidth(163),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: bucket.contents!.length,
              itemBuilder: (context, index) {
                return common16x9Cell(bucket.contents![index]);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget common16x9CellHeader() {
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

  Widget common16x9Cell(Contents content) {
    return Container(
      width: ScreenUtil().setWidth(195),
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  width: ScreenUtil().setWidth(190),
                  height: ScreenUtil().setWidth(190)/(16/9),
                  imageUrl: content.imageHref.toString(),
                  placeholder: (context, url) => Container(
                    color: ColorConfig.mainColor,
                    width: ScreenUtil().setWidth(190),
                    height: ScreenUtil().setWidth(190)/16/9,
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 10,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 0.7)
                    ),
                    padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                    // height: 18,
                    child: content.status.toString() == 'live' ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.circle_fill, color: ColorConfig.watchRed, size: 10,),
                        SizedBox(width: 6,),
                        Text(content.status.toString().toUpperCase(), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
                      ],
                    ) : Text(
                      content.streams![0].duration.toString(),
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold
                      ),),

                  // Icon(Icons.add, color: ColorConfig.watchRed,),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text(content.name.toString(), style: TextStyle(color: ColorConfig.white, fontWeight: FontWeight.bold), maxLines: 1,),
          SizedBox(height: 5,),
          Text(content.subtitle.toString(), style: TextStyle(color: ColorConfig.textColor), maxLines: 1,),
        ],
      ),
    );
  }
}
