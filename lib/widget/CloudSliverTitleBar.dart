import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';

class CloudSliverTitleBar extends StatelessWidget implements PreferredSizeWidget{

  final int number;

  const CloudSliverTitleBar({@required this.number});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
        color: colorWhite,
      ),
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.music_note),
          Text("播放全部($number首)")
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(48);

}