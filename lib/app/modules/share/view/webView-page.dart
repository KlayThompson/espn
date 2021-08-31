import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:get/get.dart';

class WebViewPage extends StatelessWidget {

  final url = Get.arguments;
  @override
  Widget build(BuildContext context) {
    print(url);
    return WebviewScaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF9F9FB),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.chevron_up, color: Colors.black54,)),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.chevron_down, color: Colors.black54,))
            ],
          ),
          leading: IconButton(
            icon: Icon(CupertinoIcons.arrow_left, color: ColorConfig.buttonColor,),
            onPressed: () => Get.back(),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.share, color: Colors.black54,))
          ],
        ),
        url: url.toString());
  }
}
