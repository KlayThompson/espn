import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'config/base_config.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'ESPN',
      theme: ThemeData(
          primaryColor: ColorConfig.mainColor
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

