import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';

class CloudAvatorNameBox extends StatelessWidget{

  final String avatorPath;
  final String name;
  final Function tapFunction;

  const CloudAvatorNameBox({@required this.avatorPath, @required this.name, this.tapFunction});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: colorWhite,
            backgroundImage: AssetImage(avatorPath),
          ),
          Text(name,style: BaseStyles.styleSubTitle,),
        ],
      ),
      onTap: (){
        tapFunction();
      },
    );
  }

}