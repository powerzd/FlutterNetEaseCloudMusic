import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';

// ignore: must_be_immutable
class NamedBox extends StatelessWidget{

  String imgPath;
  String name;
  int number;
  int maxLines = 2;

  NamedBox(this.imgPath,this.name,this.number,{this.maxLines});

  @override
  Widget build(BuildContext context) {

    double baseHeight = (MediaQuery.of(context).size.width - 60)  / 3;
    double baseWidth = (MediaQuery.of(context).size.width - 60)  / 3;
    // TODO: implement build
    return Container(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: baseHeight,
                width: baseWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imgPath)
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
              SizedBox(height: 5.0,),
              Container(width: baseWidth,child: Text(name,maxLines: maxLines,overflow: TextOverflow.ellipsis,),)
            ],
          ),
          Positioned(
            right: 3,
            top: 0,
            child: Text(calculateNumber(number),style: TextStyle(color: colorWhite,fontSize: 10.0),),
          )
        ],
      ),
    );
  }

  String calculateNumber(number) {
    String numberResult = "";
    if(number > 0 && number < 10000){
      numberResult =  number.toString();
    }else if(number > 10000){
      numberResult = "${number ~/ 10000}万";
    }
    return numberResult;
  }

}