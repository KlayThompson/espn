import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/scores_controller.dart';

class ScoresView extends GetView<ScoresController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScoresView'),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: Center(
        child: Text(
          'ScoresView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
