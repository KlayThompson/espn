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
      body: Center(
        child: Text(
          'WatchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
