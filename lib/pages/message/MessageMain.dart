import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/pages/message/CommentResp.dart';
import 'package:net_ease_cloud_music/pages/message/MessageResp.dart';
import 'package:net_ease_cloud_music/pages/message/MessgaePrivateLetterResp.dart';
import 'package:net_ease_cloud_music/utils/StringUtils.dart';
import 'package:net_ease_cloud_music/widget/CloudFutureBuilder.dart';


class MessageMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MessageMainState();
  }
}

class _MessageMainState extends State<MessageMain>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  Future _future;
  MessagePrivateLetterResp _letterResp;
  CommentResp _commentResp;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
    getMessages();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        iconTheme: IconThemeData(color: colorBlack),
        title: Text(
          "我的消息",
          style: BaseStyles.styleTitle,
        ),
        bottom: showTabBar(),
      ),
      body: Center(),
    );
  }

  Widget showTabBar() {
    return TabBar(
      tabs: <Widget>[
        Tab(
          text: "私信",
        ),
        Tab(
          text: "评论",
        ),
        Tab(
          text: "@我",
        ),
        Tab(
          text: "通知",
        ),
      ],
      controller: _controller,
      indicatorColor: colorBase,
      labelColor: colorBlack,
    );
  }

  Widget showTabBarView() {
    return TabBarView(
      children: <Widget>[
        //Text("1234"),
        showPrivateLetter(),
        Text("1234"),
        Text("1234"),
        Text("1234"),
      ],
      controller: _controller,
    );
  }

  Widget showPrivateLetter() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.fromLTRB(0, 5, 10, 5),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(_letterResp.msgs[index].fromUser.avatarUrl),
            ),
            title:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(_letterResp.msgs[index].fromUser.nickname,style: TextStyle(fontSize: 16.0)),
                Text("${StringUtils.convertMillsToDate(_letterResp.msgs[index].lastMsgTime)}",style: TextStyle(fontSize: 12.0,color: colorUnselected),),
              ],
            ),
            subtitle: Text(MessageResp.fromJson(json.decode(_letterResp.msgs[index].lastMsg)).msg,maxLines: 1,overflow:TextOverflow.ellipsis,),
          ),
        );
      },
      itemCount: _letterResp.msgs.length,
    );
  }

  getMessages() async {
  }
}
