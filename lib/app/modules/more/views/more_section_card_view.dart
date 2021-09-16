import 'package:espn/app/modules/more/views/edit_preferences_view.dart';
import 'package:espn/app/routes/app_pages.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../more_model.dart';

class MoreSectionCardView extends GetView {
  final SectionList sectionItem;
  MoreSectionCardView({required this.sectionItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.only(bottom: 10),
      child: Card(
        margin: EdgeInsets.only(left: 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            _sectionHeader(context, sectionItem.label!.startsWith('FAVORITES')),
            _sportSectionView(),

          ],
        ),
      ),
    );
  }

  // section header
  Widget _sectionHeader(BuildContext context, bool showEdit) {
    return Container(
      width: SizeConfig.screenWidth,
      height: ScreenUtil().setHeight(52),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(sectionItem.label.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                InkWell(
                  onTap: () {
                    // Get.toNamed(Routes.EDIT_PREFERENCES);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditPreferencesView(),fullscreenDialog: true));
                  },
                  child: Text(showEdit ? 'Edit' : '', style: TextStyle(color: Colors.blue),),
                )
              ],
            ),
          ),
          // CachedNetworkImage(imageUrl: 'http://via.placeholder.com/200x150', width: 200, height: 100,),
          Divider(
            indent: 10,
            endIndent: 10,
            height: 2,
            color: ColorConfig.diverColor,
          )
        ],
      ),
    );
  }

  // section list
  Widget _sportSectionView() {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          SectionItems items = sectionItem.sectionItems![index];
          // print(items.image);
        return ListTile(
          leading: Image.network(
            items.image!.startsWith('icon') ? 'http://a.espncdn.com/combiner/i?img=/i/teamlogos/soccer/500/default-team-logo-500.png' : items.image.toString(),
            width: 28,
            height: 28,
          ),
          title: Text(
            items.label.toString(),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)
          ),
          trailing: Icon(CupertinoIcons.forward),
        );
      }, separatorBuilder: (context, index) {
        return Divider(
          indent: 70,
          color: ColorConfig.diverColor,
        );
      }, itemCount: sectionItem.sectionItems!.length,
      ),
    );
  }
}
