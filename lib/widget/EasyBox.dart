import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';

// ignore: must_be_immutable
class EasyBox extends StatelessWidget{

  String imgPath;
  String name;
  Function onTap;

  EasyBox({this.imgPath,this.name,@required this.onTap,Key key}) : super(key:key);
  @override
  Widget build(BuildContext context) {

    double baseHeight = 20.0;
    double baseWidth = 20.0;
    // TODO: implement build

    return GestureDetector(
      child:  Container(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: baseHeight,
                  width: baseWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath)
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                SizedBox(height: 5.0,),
                Text(name,style: TextStyle(fontSize: 12.0),)
              ],
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}