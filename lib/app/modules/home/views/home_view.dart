import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.score),
              title: Text('text'),
            )
          ],
        ),
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