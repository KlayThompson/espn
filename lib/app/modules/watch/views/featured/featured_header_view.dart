import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../feature_model.dart';

class FeaturedHeaderViw extends StatelessWidget {
  final Buckets bucket;
  FeaturedHeaderViw({Buckets, required this.bucket});
  @override
  Widget build(BuildContext context) {
    return headerBannerView();
  }

  // 头部轮播视图
  Widget headerBannerView() {
    return Container(
      width: SizeConfig.screenWidth,
      height: ScreenUtil().setWidth(285),
      padding: EdgeInsets.fromLTRB(0, 25, 0, 20),
      child: Swiper(
        // containerWidth: SizeConfig.screenWidth,
        itemBuilder: (BuildContext context,int index){
          return headerBannerCell(bucket.contents![index]);
        },
        itemCount: bucket.contents!.length,
        loop: false,
        viewportFraction: 0.9,
        scale: 0.9,
      ),
    );
  }

  // 头部轮播视图单独cell
  Widget headerBannerCell(Contents content) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: content.imageHref.toString(),
                  placeholder: (context, url) => Container(
                    color: ColorConfig.mainColor,
                    width: ScreenUtil().setWidth(335),
                    height: ScreenUtil().setWidth(188),
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
                        color: Color.fromRGBO(255, 255, 255, 0.9)
                    ),
                    padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                    // height: 18,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.circle_fill, color: ColorConfig.watchRed, size: 10,),
                        SizedBox(width: 6,),
                        Text(content.status.toString().toUpperCase(), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
                      ],
                    )
                  // Icon(Icons.add, color: ColorConfig.watchRed,),
                ),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color.fromRGBO(255, 255, 255, 0.9)
                ),
                child: Center(
                  child: Icon(Icons.play_arrow, color: ColorConfig.watchRed, size: 50,),
                ),
              )
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
