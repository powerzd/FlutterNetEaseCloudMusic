import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';

class IconBox extends StatelessWidget {
  final IconData icon;
  final String number;

  IconBox({@required this.icon, @required this.number});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 60,
      width: 60,
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Icon(
            icon,
            size: 50,
            color: colorWhite,
          ),
          Text(
            number,
            style: BaseStyles.styleWhiteSize14,

          ),
        ],
      ),
    );
  }
}
