import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/more_controller.dart';

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
            return Column(
              children: [
                Text(
                  'MoreView is working${_.moreSection.sectionList![0].label}',
                  style: TextStyle(fontSize: 20),
                ),
                Card(
                  child: Container(
                    width: 300,
                    child: Column(
                      children: [
                        Text('${_.moreSection.sectionList![0].label}', style: TextStyle(fontSize: 20),),
                        Container(
                          width: 100,
                          height: 1,
                          color: Colors.black12,
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          }
        },
      ),
    );
  }

  Widget _LoadingView() {
    return Center(
      child: CupertinoActivityIndicator(
        radius: 15,
      ),
    );
  }
}


