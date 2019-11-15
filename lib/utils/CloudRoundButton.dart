import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';

class CloudRoundButton extends StatelessWidget{

  final double width;
  final String title;
  final Function onTap;
  final Color colorBg;
  final Color textColor;

  const CloudRoundButton({this.width = 200.0,this.title,this.onTap,this.colorBg = colorWhite, this.textColor = colorBase});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: width,
      child: FlatButton(
        color: colorBg,
        child: Text(title, style: TextStyle(color: textColor),),
        onPressed: onTap,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
      ),
    );
  }
}