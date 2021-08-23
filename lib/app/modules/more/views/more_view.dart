import 'package:espn/app/modules/more/views/more_section_card_view.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/more_controller.dart';
import '../more_model.dart';

class MoreView extends GetView<MoreController> {
  final MoreController m = Get.put(MoreController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More'),
        centerTitle: true,
        brightness: Brightness.dark,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.search),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings_outlined))
        ],
      ),
      body: GetBuilder<MoreController>(
        builder: (_) {
          if (_.loading) {
            return _LoadingView();
          } else {
            return Container(
              color: ColorConfig.bgColor,
              child: ListView(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                children: _moreSports(_.moreSection.sectionList),
              ),
            );
          }
        },
      ),
    );
  }

  List<Widget> _moreSports(List<SectionList>? sectionList) {
    List<Widget> list = [];
    SectionList sl = SectionList(label: 'FAVORITES', image: '', sectionItems:
    [SectionItems(label: 'NBA', image: 'https://secure.espncdn.com/i/teamlogos/leagues/500/nba.png')]);
    list.add(MoreSectionCardView(sectionItem: sl));
    sectionList!.forEach((element) {
      list.add(MoreSectionCardView(sectionItem: element));
    });
    return list;
  }

  Widget _LoadingView() {
    return Center(
      child: CupertinoActivityIndicator(
        radius: 15,
      ),
    );
  }
}


