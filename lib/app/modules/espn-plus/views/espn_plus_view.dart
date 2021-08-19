import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/espn_plus_controller.dart';

class EspnPlusView extends GetView<EspnPlusController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EspnPlusView'),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: Center(
        child: Text(
          'EspnPlusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
