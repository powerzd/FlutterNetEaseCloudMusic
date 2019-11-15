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
      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorHotCommentColor,colorWhite],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0,),
            GestureDetector(
              child:CircleAvatar(
                backgroundImage: NetworkImage(SpUtil.getString(AVATAR_PATH)),
                backgroundColor: colorWhite,
                radius: 35.0,
              ),
              onTap: (){
                Navigator.pushNamed(context, "userDetail");
              },
            ),
            SizedBox(height: 10.0,),
            Text(
              SpUtil.getString(NICKNAME),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                EasyBox(imgPath: "assets/icon_message.png",name: "我的消息",onTap: (){
                  Navigator.pushNamed(context, "message");
                },),
                EasyBox(imgPath: "assets/icon_friend.png",name: "我的好友",onTap: (){
                  Navigator.pushNamed(context, "friend");
                },),
               ],
            ),
          ],
        ),
      ),
    );
  }
}
