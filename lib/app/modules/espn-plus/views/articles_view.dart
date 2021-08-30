import 'package:espn/app/modules/espn-plus/articles_model.dart';
import 'package:espn/app/modules/espn-plus/controllers/espn_plus_controller.dart';
import 'package:espn/app/modules/share/view/activity-loading.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class ArticlesView extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EspnPlusController>(
      builder: (_) {
        if (_.loading) {
          return ActivityLoading();
        } else {
          return Container(
            child: ListView.builder(
              itemCount: _.articles.articlesList!.length,
              itemBuilder: (context, index) {
                return normalArticleCell(_.articles.articlesList![index]);
              },
            ),
          );
        }
      },
    );
  }

  Widget normalArticleCell(ArticlesList article) {
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Color(0xff1e1e1e),
        borderRadius: BorderRadius.circular(15)
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          normalCellHeader(article.header),
          normalCellContent(article.articleItems![0])
        ],
      ),
    );
  }

  // 普通cell的头部
  Widget normalCellHeader(ArticleHeader? header) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(header!.image.toString(), width: ScreenUtil().setWidth(40), height: ScreenUtil().setWidth(40),),
          SizedBox(width: 10,),
          Text(
            header.label.toString(),
            maxLines: 1,
            style: TextStyle(
              color: ColorConfig.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
        ],
      ),
    );
  }
//  普通cell的内容部分
  Widget normalCellContent(ArticleItems item) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
        color: Color(0xff262626),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Container(
            height: ScreenUtil().setWidth(135),
            width: SizeConfig.screenWidth - 40,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
              ),
              child: FadeInImage.assetNetwork(
                image: item.article!.images!.s52.toString(),
                fit: BoxFit.cover,
                placeholder: ImagePath.articlesDefault,
              ),
            ),
          ),
          Container(
            height: 2,
            color: Colors.black,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff262626),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
              )
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.article!.headline.toString(),
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 15,
                    color: ColorConfig.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 4,),
                Text(
                  item.formattedTimestamp!.replaceAll('%@', '•'),
                  style: TextStyle(
                    color: ColorConfig.textColor,
                    fontSize: 14
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
