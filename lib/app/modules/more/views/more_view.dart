import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/more_controller.dart';

class MoreView extends GetView<MoreController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MoreView'),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: Center(
        child: Text(
          'MoreView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
