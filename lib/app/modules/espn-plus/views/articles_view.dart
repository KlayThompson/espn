import 'package:espn/app/modules/espn-plus/articles_model.dart';
import 'package:espn/app/modules/espn-plus/controllers/espn_plus_controller.dart';
import 'package:espn/app/routes/app_pages.dart';
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
          return Center(child: Text('loading...', style: TextStyle(color: ColorConfig.textColor),));
        } else {
          return Container(
            child: ListView.builder(
              itemCount: _.articles.articlesList!.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: index == 0 ? headerCell(_.articles.articlesList![index]) : normalArticleCell(_.articles.articlesList![index]),
                  onTap: () {
                    selectArticle(_.articles.articlesList![index]);
                  },
                );
              },
            ),
          );
        }
      },
    );
  }

  selectArticle(ArticlesList article) {
    Get.toNamed(Routes.WEB_VIEW, arguments: article.articleItems![0].article!.share!.link!.action!.fullURL);
  }

  //顶部cell
  Widget headerCell(ArticlesList article) {
    return Container(
      width: SizeConfig.screenWidth,
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            width: SizeConfig.screenWidth,
            height: ScreenUtil().setWidth(250),
            child: FadeInImage.assetNetwork(
              image: article.articleItems![0].article!.images?.s32 == null ? article.articleItems![0].article!.images!.s169.toString() : article.articleItems![0].article!.images!.s32.toString(),
              fit: BoxFit.cover,
              placeholder: ImagePath.articlesHeaderDefault,
            ),
          ),
          Container(
            height: 2,
            color: Colors.black,
          ),
          Container(
            width: SizeConfig.screenWidth,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xff1e1e1e),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
              )
            ),
            child: headerCellInfo(article),
          )
        ],
      ),
    );
  }

  Widget headerCellInfo(ArticlesList article) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(article.header!.image.toString(), width: 28, height: 28,),
            SizedBox(width: 9,),
            Text(article.header!.label.toString(), style: TextStyle(color: ColorConfig.white, fontSize: 14),),
          ],
        ),
        SizedBox(height: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.articleItems![0].article!.headline.toString(),
              style: TextStyle(
                color: ColorConfig.white,
                fontSize: ScreenUtil().setSp(20),
                fontWeight: FontWeight.w900
              ),
            ),
            SizedBox(height: 8),
            Text(
              article.articleItems![0].article!.description.toString(),
              maxLines: 3,
              style: TextStyle(
                color: ColorConfig.textColor,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            Text(
              article.articleItems![0].formattedTimestamp!.replaceAll('%@', '•'),
              style: TextStyle(
                  color: ColorConfig.textColor,
                  fontSize: 13
              ),
            ),
          ],
        )
      ],
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
                image: item.article!.images?.s52 == null ? item.article!.images!.s169.toString() : item.article!.images!.s52.toString(),
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
            width: SizeConfig.screenWidth - 40,
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
