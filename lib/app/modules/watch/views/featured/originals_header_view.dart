import 'package:cached_network_image/cached_network_image.dart';
import 'package:espn/config/base_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../feature_model.dart';

class OriginalsHeaderView extends StatelessWidget {

  final OrdinalsHeader header;
  OriginalsHeaderView({OrdinalsHeader, required this.header});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenWidth + 100,
      color: ColorConfig.buttonColor,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
         Positioned(
           top: 0,
           left: 0,
           right: 0,
           child:  CachedNetworkImage(
             imageUrl: header.backgroundImage!.href.toString(),
             width: SizeConfig.screenWidth,
             height: SizeConfig.screenWidth,
             placeholder: (context, url) => Container(
               color: ColorConfig.mainColor,
               width: SizeConfig.screenWidth,
               height: SizeConfig.screenWidth,
             ),
             errorWidget: (context, url, error) => Icon(Icons.error),
           ),
         ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: SizeConfig.screenWidth,
              padding: EdgeInsets.fromLTRB(30, 150, 30, 0),
              // height: SizeConfig.screenWidth*(1/3),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0),
                        Color.fromRGBO(0, 0, 0, 0.8),
                        ColorConfig.mainColor
                      ]
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    header.name.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: ColorConfig.white
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    header.description.toString(),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorConfig.white
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    header.subtitle.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorConfig.textColor
                    ),
                  ),
                  SizedBox(height: 20,),
                  getEspnPlusButton()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getEspnPlusButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 32,
        width: 103,
        decoration: BoxDecoration(
          color: ColorConfig.plusYellow,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('GET', style: TextStyle(color: ColorConfig.white, fontSize: 11),),
            SizedBox(width: 5,),
            Image(image: AssetImage(ImagePath.espnPlusTitle), width: 38, height: 13,)
          ],
        ),
      ),
    );
  }
}
