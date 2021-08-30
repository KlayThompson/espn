import 'package:espn/config/base_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/watch_controller.dart';

class WatchView extends GetView<WatchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WatchView'),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: Container(
        color: ColorConfig.mainColor,
        child: Center(
          child: Text(
            'WatchView is working',
            style: TextStyle(fontSize: 20, color: ColorConfig.white),
          ),
        ),
      )
    );
  }
}
