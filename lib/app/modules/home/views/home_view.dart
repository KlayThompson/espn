import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController c = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(
        child: GetBuilder<HomeController>(builder: (_) {
          return Text(_.count.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('title', 'message', colorText: ColorConfig.white, backgroundColor: Colors.orange);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


AppBar _buildAppBar() => AppBar(
  title: Image(image: AssetImage(ImagePath.homeTitle), width: 90, height: 20,),
  centerTitle: true,
  brightness: Brightness.dark,
  leading: IconButton(
    onPressed: () {},
    icon: Icon(CupertinoIcons.search),
  ),
  actions: [
    IconButton(onPressed: (){}, icon: Icon(Icons.settings_outlined))
  ],
);