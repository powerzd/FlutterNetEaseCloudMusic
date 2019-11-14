import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';

class HorizontalBox extends StatelessWidget{

  final IconData icon;
  final String title;
  final String sub;

  HorizontalBox({this.icon,@required this.title,this.sub});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
      height: 48.0,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon,color: colorUnselected,),
          SizedBox(width: 20.0,),
          Text(title),
          SizedBox(width: 5.0,),
          Text(sub != null ? "($sub)" : "",style: TextStyle(fontSize: 10.0,color: colorUnselected),),
        ],
      ),
    );
  }
}
