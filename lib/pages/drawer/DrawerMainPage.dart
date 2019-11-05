import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/utils/SpUtil.dart';
import 'package:net_ease_cloud_music/widget/EasyBox.dart';

class DrawerMainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DrawerMainPageState();
  }
}

class DrawerMainPageState extends State<DrawerMainPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image_drawer_bg3.jpg"),
              fit: BoxFit.fill)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0,),
            CircleAvatar(
              backgroundImage: NetworkImage(SpUtil.getString(AVATAR_PATH)),
              backgroundColor: colorWhite,
              radius: 35.0,
            ),
            SizedBox(height: 10.0,),
            Text(
              SpUtil.getString(NICKNAME),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                EasyBox(imgPath: "assets/icon_message.png",name: "我的消息",onTap: (){

                },),
               ],
            ),
          ],
        ),
      ),
    );
  }
}
