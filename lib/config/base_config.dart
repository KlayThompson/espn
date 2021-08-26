
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class ColorConfig {
  static Color mainColor = Colors.black;
  static Color darkBottomBarColor = Color(0xff121212);

  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color bgColor = Color(0xfff0f0f0);
  static Color diverColor = Color(0xff999999);
  static Color lightAppBar = Color(0xffF9F9F9);
  static Color buttonColor = Color(0xff0064C8);

  static Color textColor = Color(0xff909090);
  static Color plusYellow = Color(0xffFFAC00);

}


abstract class ImagePath {
  static String tabBarScoresActive = 'assets/images/tabbar-scores-active.png';
  static String tabBarScores = 'assets/images/tabbar-scores.png';
  static String tabBarPlusActive = 'assets/images/tabbar-plus-active.png';
  static String tabBarPlus = 'assets/images/tabbar-plus.png';

  static String homeTitle = 'assets/images/logo-espn-light.png';
  static String espnPlusTitle = 'assets/images/ESPN_PLUS.png';
  static String defaultTeamLogo = 'assets/images/default-team-logo.png';
}

abstract class ServerPath {
  static String homeFeed = 'http://sportscenter.fan.api.espn.com/apis/v1/homefeed?index=mobilefrontpage&pubkey=espn-en-mobilefrontpage-index&hsvPubkey=espn-en-homescreen-video&profile=sportscenter_v1&platform=ios&device=handset&swid=bf3d27cb-8591-400c-8cb4-d83a0d9ae641&zipcode=?&seenPostGame=s:1~l:10~e:401169096&seenPostGame=s:40~l:46~e:401163175&seenPostGame=s:20~l:28~e:401128128&seenPostGame=s:20~l:28~e:401128123&seenPostGame=s:20~l:28~e:401128119&seenPostGame=s:40~l:46~e:401160657&seenPostGame=s:40~l:46~e:401163174&seenPostGame=s:40~l:46~e:401163176&seenPostGame=s:20~l:28~e:401128130&seenPostGame=s:40~l:46~e:401160656&seenPostGame=s:20~l:28~e:401128111&seenPostGame=s:1~l:10~e:401169099&isAuthenticated=false&freePreviewTimeAvailable=600&excludeContent=3536307&excludeContent=3536591&excludeContent=3536127&swid=bf3d27cb-8591-400c-8cb4-d83a0d9ae641&content=32046920&content=3536127&content=27919749&content=3536307&content=27840255&content=3536591&content=32046758&content=27921407&content=27855711&content=27841705&supportedPackages=ESPN_PLUS&authorizedNetworks=espn_free&hasMVPDAuthedEver=false&hasMVPDAuthedEver=false&lang=en&region=us&version=68&appName=espnapp&locale=CN&isPremium=false';
  static String moreSections = 'https://sportscenter.api.espn.com/apis/espnapp/v1/sportsList?profile=sportscenter_v1&platform=ios&device=handset&version=68&lang=en&region=us&appName=espnapp';
  static String tapTeamList = 'https://sportscenter.api.espn.com/apis/espnapp/v1/favoritesManagement?lang=en&region=us&profile=sportscenter_v1&platform=ios&device=handset&version=68&appName=espnapp&locale=CN&isPremium=false';
}

abstract class SizeConfig {
  static double screenWidth = ScreenUtil().screenWidth;
  static double screenHeight = ScreenUtil().screenHeight;
  static double statusBarHeight = ScreenUtil().statusBarHeight;
  static double bottomBarHeight = ScreenUtil().bottomBarHeight;
}